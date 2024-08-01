using Models;
using Microsoft.EntityFrameworkCore;

namespace BaseDatos
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options):base(options)
        {

        }

        public DbSet<Hotel> hotel { get; set; }
    }
}
