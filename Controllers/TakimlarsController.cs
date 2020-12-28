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
    public class TakimlarsController : Controller
    {
        private readonly webContext _context;

        public TakimlarsController(webContext context)
        {
            _context = context;
        }

        // GET: Takimlars
        public async Task<IActionResult> Index()
        {
            return View(await _context.Takimlar.ToListAsync());
        }

        // GET: Takimlars/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var takimlar = await _context.Takimlar
                .FirstOrDefaultAsync(m => m.Id == id);
            if (takimlar == null)
            {
                return NotFound();
            }

            return View(takimlar);
        }

        // GET: Takimlars/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Takimlars/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,TakimAdi,TakimMerkezi,TakimPatronu,TeknikSef,Sasi,GucUnitesi,KurulusTarihi,DunyaSampiyonluklari,EnIyiSonuc,PolePozisyonu,EnHizliTur")] Takimlar takimlar)
        {
            if (ModelState.IsValid)
            {
                _context.Add(takimlar);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(takimlar);
        }

        // GET: Takimlars/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var takimlar = await _context.Takimlar.FindAsync(id);
            if (takimlar == null)
            {
                return NotFound();
            }
            return View(takimlar);
        }

        // POST: Takimlars/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,TakimAdi,TakimMerkezi,TakimPatronu,TeknikSef,Sasi,GucUnitesi,KurulusTarihi,DunyaSampiyonluklari,EnIyiSonuc,PolePozisyonu,EnHizliTur")] Takimlar takimlar)
        {
            if (id != takimlar.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(takimlar);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TakimlarExists(takimlar.Id))
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
            return View(takimlar);
        }

        // GET: Takimlars/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var takimlar = await _context.Takimlar
                .FirstOrDefaultAsync(m => m.Id == id);
            if (takimlar == null)
            {
                return NotFound();
            }

            return View(takimlar);
        }

        // POST: Takimlars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var takimlar = await _context.Takimlar.FindAsync(id);
            _context.Takimlar.Remove(takimlar);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TakimlarExists(int id)
        {
            return _context.Takimlar.Any(e => e.Id == id);
        }
    }
}
