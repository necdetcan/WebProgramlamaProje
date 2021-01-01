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
    public class HaberlersController : Controller
    {
        private readonly webContext _context;

        public HaberlersController(webContext context)
        {
            _context = context;
        }

        // GET: Haberlers
        public async Task<IActionResult> Index()
        {
            return View(await _context.Haberler.ToListAsync());
        }

        // GET: Haberlers/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var haberler = await _context.Haberler
                .FirstOrDefaultAsync(m => m.Id == id);
            if (haberler == null)
            {
                return NotFound();
            }

            return View(haberler);
        }

        // GET: Haberlers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Haberlers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,HaberTr,HaberEng,Begeni,Dislike,Tarih,Baslik,BaslikEng")] Haberler haberler)
        {
            if (ModelState.IsValid)
            {
                _context.Add(haberler);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(haberler);
        }

        // GET: Haberlers/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var haberler = await _context.Haberler.FindAsync(id);
            if (haberler == null)
            {
                return NotFound();
            }
            return View(haberler);
        }

        // POST: Haberlers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,HaberTr,HaberEng,Begeni,Dislike,Tarih,Baslik,BaslikEng")] Haberler haberler)
        {
            if (id != haberler.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(haberler);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!HaberlerExists(haberler.Id))
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
            return View(haberler);
        }

        // GET: Haberlers/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var haberler = await _context.Haberler
                .FirstOrDefaultAsync(m => m.Id == id);
            if (haberler == null)
            {
                return NotFound();
            }

            return View(haberler);
        }

        // POST: Haberlers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var haberler = await _context.Haberler.FindAsync(id);
            _context.Haberler.Remove(haberler);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool HaberlerExists(int id)
        {
            return _context.Haberler.Any(e => e.Id == id);
        }
    }
}
