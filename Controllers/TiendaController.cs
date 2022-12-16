

using System.Linq;
using System.Web.Http;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class TiendaController : ApiController
    {
        [HttpGet]
        public IHttpActionResult Query()
        {
            TestContext db = new TestContext();

            var data = db.Database.SqlQuery<Tienda>("spTiendaQuery").ToList();

            return Ok(data);
        }

        [HttpGet]
        public IHttpActionResult Get(int IdTienda)
        {
            TestContext db = new TestContext();

            var data = db.Database.SqlQuery<Tienda>("spTiendaQuery @IdTienda = {0}", IdTienda).FirstOrDefault();

            return Ok(data);
        }

        [HttpPost]
        public IHttpActionResult Insert(Tienda model)
        {
            TestContext db = new TestContext();

            db.Database.ExecuteSqlCommand("spTiendaInsert @Nombre = {0}, @Direccion = {1}, @Telefono = {2}, @Latitud = {3}, @Longitud = {4}",
               model.Nombre,model.Direccion, model.Telefono, model.Latitud, model.Longitud);

            return Ok();
        }

        [HttpPost]
        public IHttpActionResult Update(Tienda model)
        {
            TestContext db = new TestContext();
            db.Database.ExecuteSqlCommand("spTiendaUpdate @IdTienda = {0}, @Nombre = {0}, @Direccion = {1}, @Telefono = {2}, @Latitud = {3}, @Longitud = {4}",
              model.IdTienda, model.Nombre, model.Direccion, model.Telefono, model.Latitud, model.Longitud);

            return Ok();
        }

        [HttpPost]
        public IHttpActionResult Delete(Tienda model)
        {
            TestContext db = new TestContext();

            db.Database.ExecuteSqlCommand("spTiendaDelete @IdTienda = {0}", model.IdTienda);

            return Ok();
        }
    }
}