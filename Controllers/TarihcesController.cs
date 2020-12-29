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
    public class TarihcesController : Controller
    {
        private readonly webContext _context;

        public TarihcesController(webContext context)
        {
            _context = context;
        }

        // GET: Tarihces
        public async Task<IActionResult> Index()
        {
            return View(await _context.Tarihce.ToListAsync());
        }

        // GET: Tarihces/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tarihce = await _context.Tarihce
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tarihce == null)
            {
                return NotFound();
            }

            return View(tarihce);
        }

        // GET: Tarihces/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Tarihces/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Tarihce1,TarihceEng")] Tarihce tarihce)
        {
            if (ModelState.IsValid)
            {
                _context.Add(tarihce);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(tarihce);
        }

        // GET: Tarihces/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tarihce = await _context.Tarihce.FindAsync(id);
            if (tarihce == null)
            {
                return NotFound();
            }
            return View(tarihce);
        }

        // POST: Tarihces/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Tarihce1,TarihceEng")] Tarihce tarihce)
        {
            if (id != tarihce.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(tarihce);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TarihceExists(tarihce.Id))
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
            return View(tarihce);
        }

        // GET: Tarihces/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tarihce = await _context.Tarihce
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tarihce == null)
            {
                return NotFound();
            }

            return View(tarihce);
        }

        // POST: Tarihces/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var tarihce = await _context.Tarihce.FindAsync(id);
            _context.Tarihce.Remove(tarihce);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TarihceExists(int id)
        {
            return _context.Tarihce.Any(e => e.Id == id);
        }
    }
}
