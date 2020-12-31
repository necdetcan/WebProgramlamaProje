using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebProje.Models;

namespace WebProje.Controllers
{
    public class TakvimsController : Controller
    {
        private readonly webContext _context;

        public TakvimsController(webContext context)
        {
            _context = context;
        }

        // GET: Takvims
        public async Task<IActionResult> Index()
        {
            return View(await _context.Takvim.ToListAsync());
        }

        // GET: Takvims/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var takvim = await _context.Takvim
                .FirstOrDefaultAsync(m => m.Id == id);
            if (takvim == null)
            {
                return NotFound();
            }

            return View(takvim);
        }

        // GET: Takvims/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Takvims/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,YarisAdi,Birinci,Ikinci,Ucuncu,Dorduncu,Besinci,Altinci,Yedinci,Sekizinci,Dokuzuncu,Onuncu,OnBirinci,OnIkinci,OnUcuncu,OnDorduncu,OnBesinci,OnAltinci,OnYedinci,OnSekizinci,OnDokuzuncu,Yirminci,Ulke,EnHizliTur,PistAdi,Tarih")] Takvim takvim)
        {
            if (ModelState.IsValid)
            {
                _context.Add(takvim);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(takvim);
        }

        // GET: Takvims/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var takvim = await _context.Takvim.FindAsync(id);
            if (takvim == null)
            {
                return NotFound();
            }
            return View(takvim);
        }

        // POST: Takvims/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,YarisAdi,Birinci,Ikinci,Ucuncu,Dorduncu,Besinci,Altinci,Yedinci,Sekizinci,Dokuzuncu,Onuncu,OnBirinci,OnIkinci,OnUcuncu,OnDorduncu,OnBesinci,OnAltinci,OnYedinci,OnSekizinci,OnDokuzuncu,Yirminci,Ulke,EnHizliTur,PistAdi,Tarih")] Takvim takvim)
        {
            if (id != takvim.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(takvim);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TakvimExists(takvim.Id))
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
            return View(takvim);
        }

        // GET: Takvims/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var takvim = await _context.Takvim
                .FirstOrDefaultAsync(m => m.Id == id);
            if (takvim == null)
            {
                return NotFound();
            }

            return View(takvim);
        }

        // POST: Takvims/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var takvim = await _context.Takvim.FindAsync(id);
            _context.Takvim.Remove(takvim);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TakvimExists(int id)
        {
            return _context.Takvim.Any(e => e.Id == id);
        }
    }
}
