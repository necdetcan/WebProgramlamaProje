using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace WebProje.Models
{
    public partial class webContext : DbContext
    {
        public webContext()
        {
        }

        public webContext(DbContextOptions<webContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AspNetRoleClaims> AspNetRoleClaims { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUserRoles> AspNetUserRoles { get; set; }
        public virtual DbSet<AspNetUserTokens> AspNetUserTokens { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<Haberler> Haberler { get; set; }
        public virtual DbSet<Pilotlar> Pilotlar { get; set; }
        public virtual DbSet<PuanDurumu> PuanDurumu { get; set; }
        public virtual DbSet<Takimlar> Takimlar { get; set; }
        public virtual DbSet<Takvim> Takvim { get; set; }
        public virtual DbSet<Tarihce> Tarihce { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=LAPTOP-LFE3AMN4;Database=web;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AspNetRoleClaims>(entity =>
            {
                entity.HasIndex(e => e.RoleId);

                entity.Property(e => e.RoleId).IsRequired();

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId);
            });

            modelBuilder.Entity<AspNetRoles>(entity =>
            {
                entity.HasIndex(e => e.NormalizedName)
                    .HasName("RoleNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedName] IS NOT NULL)");

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.NormalizedName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetUserClaims>(entity =>
            {
                entity.HasIndex(e => e.UserId);

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserLogins>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.HasIndex(e => e.UserId);

                entity.Property(e => e.LoginProvider).HasMaxLength(128);

                entity.Property(e => e.ProviderKey).HasMaxLength(128);

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserRoles>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId });

                entity.HasIndex(e => e.RoleId);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.RoleId);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserTokens>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.Property(e => e.LoginProvider).HasMaxLength(128);

                entity.Property(e => e.Name).HasMaxLength(128);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUsers>(entity =>
            {
                entity.HasIndex(e => e.NormalizedEmail)
                    .HasName("EmailIndex");

                entity.HasIndex(e => e.NormalizedUserName)
                    .HasName("UserNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedUserName] IS NOT NULL)");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);
            });

            modelBuilder.Entity<Haberler>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Baslik).HasColumnType("text");

                entity.Property(e => e.BaslikEng)
                    .HasColumnName("BaslikENG")
                    .HasColumnType("text");

                entity.Property(e => e.HaberEng)
                    .HasColumnName("HaberENG")
                    .HasColumnType("text");

                entity.Property(e => e.HaberTr)
                    .HasColumnName("HaberTR")
                    .HasColumnType("text");

                entity.Property(e => e.Tarih).HasColumnType("datetime");
            });

            modelBuilder.Entity<Pilotlar>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Ad)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Biyografi).HasColumnType("text");

                entity.Property(e => e.DogumYeri)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Soyad)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Takim)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Ulke)
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<PuanDurumu>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Pilot)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Takim)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Takimlar>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .ValueGeneratedNever();

                entity.Property(e => e.EnIyiSonuc)
                    .HasMaxLength(250)
                    .IsUnicode(false);

                entity.Property(e => e.GucUnitesi)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.KurulusTarihi)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Sasi)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.TakimAdi)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.TakimMerkezi)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.TakimPatronu)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.TeknikSef)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Takvim>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Altinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Besinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Birinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Dokuzuncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Dorduncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.EnHizliTur)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Ikinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnAltinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnBesinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnBirinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnDokuzuncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnDorduncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnIkinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnSekizinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnUcuncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.OnYedinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Onuncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PistAdi)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Sekizinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Tarih).HasColumnType("date");

                entity.Property(e => e.Ucuncu)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Ulke)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.YarisAdi)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Yedinci)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Yirminci)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Tarihce>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Tarihce1)
                    .HasColumnName("Tarihce")
                    .HasColumnType("text");

                entity.Property(e => e.TarihceEng)
                    .HasColumnName("TarihceENG")
                    .HasColumnType("text");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
