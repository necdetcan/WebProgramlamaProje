using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebProje.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Localization;
using Microsoft.Extensions.Options;
using Microsoft.AspNetCore.Http;

namespace WebProje.Controllers
{
    public class PuanDurumusController : Controller
    {
        private readonly webContext _context;

        public PuanDurumusController(webContext context)
        {
            _context = context;
        }

        // GET: PuanDurumus
        public async Task<IActionResult> Index()
        
        
        {
            //return View(.ToListAsync());
            return View(await _context.PuanDurumu.OrderByDescending(PuanDurumu => PuanDurumu.Puan).ToListAsync());
        }
        [HttpPost]
        public IActionResult Index(string culture)
        {
            Response.Cookies.Append(
                CookieRequestCultureProvider.DefaultCookieName,
                CookieRequestCultureProvider.MakeCookieValue(new RequestCulture(culture)),
                new CookieOptions { Expires = DateTimeOffset.Now.AddDays(10) }


                );
            return RedirectToAction("Index");
        }
        // GET: PuanDurumus/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var puanDurumu = await _context.PuanDurumu
                .FirstOrDefaultAsync(m => m.Id == id);
            if (puanDurumu == null)
            {
                return NotFound();
            }

            return View(puanDurumu);
        }

        // GET: PuanDurumus/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: PuanDurumus/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Takim,Pilot,Puan")] PuanDurumu puanDurumu)
        {
            if (ModelState.IsValid)
            {
                _context.Add(puanDurumu);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(puanDurumu);
        }

        // GET: PuanDurumus/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var puanDurumu = await _context.PuanDurumu.FindAsync(id);
            if (puanDurumu == null)
            {
                return NotFound();
            }
            return View(puanDurumu);
        }

        // POST: PuanDurumus/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Takim,Pilot,Puan")] PuanDurumu puanDurumu)
        {
            if (id != puanDurumu.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(puanDurumu);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PuanDurumuExists(puanDurumu.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(puanDurumu);
        }

        // GET: PuanDurumus/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var puanDurumu = await _context.PuanDurumu
                .FirstOrDefaultAsync(m => m.Id == id);
            if (puanDurumu == null)
            {
                return NotFound();
            }

            return View(puanDurumu);
        }

        // POST: PuanDurumus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var puanDurumu = await _context.PuanDurumu.FindAsync(id);
            _context.PuanDurumu.Remove(puanDurumu);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PuanDurumuExists(int id)
        {
            return _context.PuanDurumu.Any(e => e.Id == id);
        }
    }
}
