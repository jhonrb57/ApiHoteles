﻿using Models;
using System;
using BaseDatos;
using DataObjects;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiHoteles.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelController : ControllerBase
    {
        private readonly AppDbContext context;
        private readonly HotelDataObject hotelDO = new HotelDataObject();

        public HotelController(AppDbContext context)
        {
            this.context = context;
        }

        // GET: api/<HotelController>
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                var hoteles = (from h in context.hotel
                               select h).ToList();

                if (hoteles.Count > 0)
                {
                    hoteles = hotelDO.OrdenamientoAscending(hoteles);
                }

                return Ok(hoteles);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // GET api/<HotelController>/5
        [HttpGet("{categoria}", Name = "GetHotel")]
        public ActionResult Get(char categoria)
        {
            try
            {
                var hoteles = (from h in context.hotel
                             where h.Categoria == categoria
                             select h).ToList();

                if(hoteles.Count > 0)
                {
                    hoteles = hotelDO.OrdenamientoDescending(hoteles);
                }

                return Ok(hoteles);

            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<HotelController>
        [HttpPost]
        public ActionResult Post([FromBody] Hotel hotel)
        {
            try
            {
                context.hotel.Add(hotel);
                context.SaveChanges();

                return CreatedAtRoute("GetHotel", new { id = hotel.idHotel }, hotel);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // PUT api/<HotelController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Hotel hotel)
        {
            try
            {
                if(hotel.idHotel == id)
                {
                    context.Entry(hotel).State = EntityState.Modified;
                    context.SaveChanges();
                    return CreatedAtRoute("GetHotel", new { id = hotel.idHotel }, hotel);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE api/<HotelController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try
            {
                var hotel = (from h in context.hotel
                             where h.idHotel == id
                             select h).FirstOrDefault();

                if(hotel != null)
                {
                    context.hotel.Remove(hotel);
                    context.SaveChanges();
                    return Ok(id);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
