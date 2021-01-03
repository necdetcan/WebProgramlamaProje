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

namespace WebProje
{
    public class PilotlarsController : Controller
    {
        private readonly webContext _context;

        public PilotlarsController(webContext context)
        {
            _context = context;
        }

        // GET: Pilotlars
        public async Task<IActionResult> Index()
        {
            return View(await _context.Pilotlar.ToListAsync());
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
        public async Task<IActionResult> Pilot(String? Ad)
        {
            if (Ad == null)
            {
                return NotFound();
            }

            var pilotlar = await _context.Pilotlar
                .FirstOrDefaultAsync(m => m.Ad == Ad);
            if (pilotlar == null)
            {
                return NotFound();
            }

            return View(Pilot);
        }

        private IActionResult View(Func<string, Task<IActionResult>> pilot)
        {
            throw new NotImplementedException();
        }

        // GET: Pilotlars/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pilotlar = await _context.Pilotlar
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pilotlar == null)
            {
                return NotFound();
            }

            return View(pilotlar);
        }
        [HttpPost]
        public IActionResult Details(string culture)
        {
            Response.Cookies.Append(
                CookieRequestCultureProvider.DefaultCookieName,
                CookieRequestCultureProvider.MakeCookieValue(new RequestCulture(culture)),
                new CookieOptions { Expires = DateTimeOffset.Now.AddDays(10) }


                );
            return RedirectToAction("Details");
        }
        // GET: Pilotlars/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Pilotlars/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Soyad,Ad,Yas,Takim,Biyografi,YarisGalibiyet,PodyumSayi")] Pilotlar pilotlar)
        {
            if (ModelState.IsValid)
            {
                _context.Add(pilotlar);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(pilotlar);
        }

        // GET: Pilotlars/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pilotlar = await _context.Pilotlar.FindAsync(id);
            if (pilotlar == null)
            {
                return NotFound();
            }
            return View(pilotlar);
        }

        // POST: Pilotlars/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Soyad,Ad,Yas,Takim,Biyografi,YarisGalibiyet,PodyumSayi")] Pilotlar pilotlar)
        {
            if (id != pilotlar.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(pilotlar);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PilotlarExists(pilotlar.Id))
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
            return View(pilotlar);
        }

        // GET: Pilotlars/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pilotlar = await _context.Pilotlar
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pilotlar == null)
            {
                return NotFound();
            }

            return View(pilotlar);
        }

        // POST: Pilotlars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var pilotlar = await _context.Pilotlar.FindAsync(id);
            _context.Pilotlar.Remove(pilotlar);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PilotlarExists(int id)
        {
            return _context.Pilotlar.Any(e => e.Id == id);
        }
    }
}
