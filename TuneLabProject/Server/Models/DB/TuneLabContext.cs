using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using TuneLabProject.Shared.SharedModels;

namespace TuneLabProject.Server.Models.DB
{
    public partial class TuneLabContext : DbContext
    {
        public TuneLabContext()
        {
        }

        public TuneLabContext(DbContextOptions<TuneLabContext> options)
            : base(options)
        {
        }

        public virtual DbSet<FuelType> FuelType { get; set; }
        public virtual DbSet<Invoice> Invoice { get; set; }
        public virtual DbSet<InvoiceProduct> InvoiceProduct { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductCategory> ProductCategory { get; set; }
        public virtual DbSet<UserCart> UserCart { get; set; }
        public virtual DbSet<Vehicle> Vehicle { get; set; }
        public virtual DbSet<VehicleMake> VehicleMake { get; set; }
        public virtual DbSet<VehicleModel> VehicleModel { get; set; }
        public virtual DbSet<VehicleProduct> VehicleProduct { get; set; }        

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FuelType>(entity =>
            {
                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(15);
            });

            modelBuilder.Entity<Invoice>(entity =>
            {
                entity.Property(e => e.TotalPaid).HasColumnType("money");

                entity.Property(e => e.InvoiceDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasMaxLength(20);

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.Property(e => e.ShippingName).HasMaxLength(50);

                entity.Property(e => e.ShippingStreet).HasMaxLength(50);

                entity.Property(e => e.ShippingCity).HasMaxLength(50);

                entity.Property(e => e.ShippingPostcode).HasMaxLength(10);
            });

            modelBuilder.Entity<InvoiceProduct>(entity =>
            {
                entity.Property(e => e.PriceAtTime).HasColumnType("money");

                entity.HasOne(d => d.Invoice)
                    .WithMany(p => p.InvoiceProduct)
                    .HasForeignKey(d => d.InvoiceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_InvoiceProduct_Invoice");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.InvoiceProduct)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_InvoiceProduct_Product");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.Property(e => e.CurrentPrice).HasColumnType("money");

                entity.Property(e => e.ImageName).HasMaxLength(25);

                entity.Property(e => e.ProductDesc)
                    .IsRequired()
                    .HasMaxLength(750);

                entity.Property(e => e.ProductName)
                    .IsRequired()
                    .HasMaxLength(30);

                entity.HasOne(d => d.ProductCategory)
                    .WithMany(p => p.Product)
                    .HasForeignKey(d => d.ProductCategoryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Product_ProductCategory");
            });

            modelBuilder.Entity<ProductCategory>(entity =>
            {
                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(25);
            });

            modelBuilder.Entity<UserCart>(entity =>
            {
                entity.HasKey(e => e.UserId);

                entity.Property(e => e.CartData).IsRequired();
            });

            modelBuilder.Entity<Vehicle>(entity =>
            {
                entity.Property(e => e.Engine)
                    .IsRequired()
                    .HasMaxLength(25);

                entity.HasOne(d => d.FuelType)
                    .WithMany(p => p.Vehicle)
                    .HasForeignKey(d => d.FuelTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Vehicle_FuelType");

                entity.HasOne(d => d.Model)
                    .WithMany(p => p.Vehicle)
                    .HasForeignKey(d => d.ModelId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Vehicle_VehicleModel");
            });

            modelBuilder.Entity<VehicleMake>(entity =>
            {
                entity.HasKey(e => e.MakeId);

                entity.Property(e => e.MakeName)
                    .IsRequired()
                    .HasMaxLength(25);
            });

            modelBuilder.Entity<VehicleModel>(entity =>
            {
                entity.HasKey(e => e.ModelId);

                entity.Property(e => e.ModelName)
                    .IsRequired()
                    .HasMaxLength(25);

                entity.HasOne(d => d.Make)
                    .WithMany(p => p.VehicleModel)
                    .HasForeignKey(d => d.MakeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_VehicleModel_VehicleMake");
            });

            modelBuilder.Entity<VehicleProduct>(entity =>
            {
                entity.HasOne(d => d.Product)
                    .WithMany(p => p.VehicleProduct)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_VehicleProduct_Product");

                entity.HasOne(d => d.Vehicle)
                    .WithMany(p => p.VehicleProduct)
                    .HasForeignKey(d => d.VehicleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_VehicleProduct_Vehicle");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
