using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace TuneLabProject.Client.Utilities
{
    public static class HttpClientExtensions
    {
        //SS 01/04 I rewrote this block of code as an extension for the HttpClient as i was using it multiple times in the app
        public static async Task<HttpResponseMessage> SendAuthenticatedAsync(this HttpClient httpClient, HttpMethod method,
            string address, object requestContent, string token)
        {            
            //Create the request
            HttpRequestMessage request = new HttpRequestMessage()
            {
                Method = method,
                RequestUri = new Uri(address)
            };

            //If there is content to send, serialize it and set as the request content
            if(requestContent != null)
            {
                string content = JsonSerializer.Serialize(requestContent);
                request.Content = new StringContent(content, Encoding.UTF8, "application/json");
            }

            //Add the authentication token into the request header
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

            //Send the request and return the response
            return await httpClient.SendAsync(request);

        }

    }
}
