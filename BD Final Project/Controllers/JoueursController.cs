﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BD_Final_Project.Data;
using BD_Final_Project.Models;
using Microsoft.Data.SqlClient;
using BD_Final_Project.ViewModel;

namespace BD_Final_Project.Controllers
{
    public class JoueursController : Controller
    {
        private readonly footballContext _context;

      

        public JoueursController(footballContext context)
        {
            _context = context;
        }

        // GET: Joueurs
        public async Task<IActionResult> Index()
        {
            if (_context.Images == null)
            {
                return Problem("Entity set'football.Images' is null");
            }
            var footballContext = _context.Joueurs.Include(j => j.Equipe);
            //var i = _context.Images.Include(e => e.Joueur);

            List<ImageVM> ivm = await _context.Joueurs.Include(e => e.Equipe)
                .Select(x => new ImageVM
                {
                    Image = x.Images.Where(i => i.JoueurId == x.JoueurId).FirstOrDefault(),
                    fichierImage = x.Images.Where(i => i.JoueurId == x.JoueurId).FirstOrDefault().Photo == null ? null : $"data:image/png;base64,{Convert.ToBase64String(x.Images.Where(i => i.JoueurId == x.JoueurId).FirstOrDefault().Photo)}",
                    Joueurs = x

                })
                .ToListAsync();









            return View(ivm);
        }

        // GET: Joueurs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
           
            if (id == null || _context.Joueurs == null)
            {
                return NotFound();
            }

            var joueur = await _context.Joueurs
                .Include(j => j.Equipe).Include(e => e.Images)
                .FirstOrDefaultAsync(m => m.JoueurId == id);
            if (joueur == null)
            {
                return NotFound();
            }


            Image image = joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault();
            //string fichier = joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault().Photo == null ? null : $"data:image/png;base64,{Convert.ToBase64String(joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault().Photo)}";
            if(joueur.Images.Count  <= 0)
            {
                ImageVM ivm = new ImageVM
                {
                    Image = joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault(),
                    Joueurs = joueur,
                    Nas = joueur.Nas,
                    JoueurId = joueur.JoueurId,

                };
                return View(ivm);
            }
            else
            {
                ImageVM ivm = new ImageVM
                {
                    Image = joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault(),
                    fichierImage = joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault().Photo == null ? null : $"data:image/png;base64,{Convert.ToBase64String(joueur.Images.Where(i => i.JoueurId == joueur.JoueurId).FirstOrDefault().Photo)}",
                    Joueurs = joueur,
                    Nas = joueur.Nas,
                    JoueurId = joueur.JoueurId,

                };
                return View(ivm);
            }

            

           

           
        }

        // GET: Joueurs/Create
        public IActionResult Create()
        {
            ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "Nom");
            return View();
        }

        // POST: Joueurs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(ImageUploadVM image)
        {
           

            if (image.Joueurs != null )
            {
              

                _context.Add(image.Joueurs);
                await _context.SaveChangesAsync();
                Joueur joueur =  _context.Joueurs.ToList().OrderByDescending(c=> c.JoueurId).FirstOrDefault();
               

                if (image.FormFile != null && image.FormFile.Length >= 0)
                {
                    MemoryStream stream = new MemoryStream();
                    await image.FormFile.CopyToAsync(stream);
                    byte[] fichier = stream.ToArray();

                    Image i = new Image()
                    {
                        JoueurId = joueur.JoueurId,
                        Photo = fichier
                    };
                    image.Joueurs.Images.Add(i);
                    _context.Update(joueur);
                    await _context.SaveChangesAsync();
                   await chiffrement(image.Nas, joueur.JoueurId); 

                } else 
                { 
                    await chiffrement(image.Nas, joueur.JoueurId); 
 
                } 

                return RedirectToAction(nameof(Index));
            }
            ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "Nom", image.Joueurs.Nom);
            return View(image);
        }

        // GET: Joueurs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Joueurs == null)
            {
                return NotFound();
            }

            var joueur = await _context.Joueurs.FindAsync(id);
            if (joueur == null)
            {
                return NotFound();
            }

            ImageUploadVM i = new ImageUploadVM()
            {
                Joueurs = joueur,
               
               
            };
            ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "EquipeId", joueur.EquipeId);
            return View(i);
        }

        // POST: Joueurs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, ImageUploadVM image)
        {
            if (id != image.Joueurs.JoueurId)
            {
                return NotFound();
            }
            
            
            if (ModelState.IsValid)
            {
              
                try
                {
                   
                    _context.Update(image.Joueurs);
                    await _context.SaveChangesAsync();
                    var joueur = _context.Joueurs.Include(e => e.Images).Where( i => i.JoueurId == id).SingleOrDefault();
                
                    if (joueur == null)
                    {
                        return NotFound();
                    }

                  
                    if (image.FormFile != null && image.FormFile.Length >= 0)
                    {
                        MemoryStream stream = new MemoryStream();
                        await image.FormFile.CopyToAsync(stream);
                        byte[] fichier = stream.ToArray();
                        if (joueur.Images.FirstOrDefault() == null )
                        {
                            Image i = new Image()
                            {
                                JoueurId = joueur.JoueurId,
                                Photo = fichier
                            };
                            joueur.Images.Add(i);
                            _context.Update(joueur);
                            await _context.SaveChangesAsync();
                                                await chiffrement(image.Nas, image.Joueurs.JoueurId); 


                        }
                        else
                        {
                            joueur.Images.FirstOrDefault().Photo = fichier;
                            _context.Update(joueur);
                            await _context.SaveChangesAsync();
                                               await chiffrement(image.Nas, image.Joueurs.JoueurId); 

                        }


                    }
                    else
                    {
                                           await chiffrement(image.Nas, image.Joueurs.JoueurId); 


                    }

                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!JoueurExists(image.Joueurs.JoueurId))
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
            ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "EquipeId", image.Joueurs.EquipeId);
            return View(image);
        }




        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> affiche(int JoueurId, string Nas)
        {
            Joueur joueur = await _context.Joueurs.FindAsync(JoueurId);

            if (JoueurId != joueur.JoueurId || joueur == null)
            {
                return NotFound();
            }




            if (Nas != null && Nas !="" && JoueurId != 0)
            {
               
                    JoueurRetour? joueurRetour = await Dechiffrement(Nas,JoueurId); 
                JoueurDechiffrerVM joueurDechiffrerVM = new JoueurDechiffrerVM
                {
                    joueurRetour = joueurRetour,
                    Joueur = joueur

                };

                ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "EquipeId", joueur.EquipeId);

                return View(joueurDechiffrerVM);
            }

            return View();

        }

        // GET: Joueurs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Joueurs == null)
            {
                return NotFound();
            }

            var joueur = await _context.Joueurs
                .Include(j => j.Equipe)
                .FirstOrDefaultAsync(m => m.JoueurId == id);
            if (joueur == null)
            {
                return NotFound();
            }

            return View(joueur);
        }

        // POST: Joueurs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Joueurs == null)
            {
                return Problem("Entity set 'footballContext.Joueurs'  is null.");
            }
            var joueur = await _context.Joueurs.FindAsync(id);
            if (joueur != null)
            {
                _context.Joueurs.Remove(joueur);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool JoueurExists(int id)
        {
          return (_context.Joueurs?.Any(e => e.JoueurId == id)).GetValueOrDefault();
        }

        public IActionResult Recherche()
        {
            ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "Nom");
            return View(new JoueurPalmaresVM() { Nom ="", EquipeId=1});
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Recherche(JoueurPalmaresVM jpvm)
        {
            DateTime tempsAvant = DateTime.Now;
            if (_context.Trophees == null || _context.Joueurs == null || _context.Palmares == null)
            {
                ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "Nom");
                return Problem("An entity set from 'football' is null.");
            }
            Joueur joueur = await _context.Joueurs.Include(e => e.Equipe).Include(t => t.Palmares).ThenInclude(p => p.Trophee).FirstOrDefaultAsync(x => x.Nom == jpvm.Nom && x.Equipe.EquipeId == jpvm.EquipeId);

            if (joueur == null)
            {
                ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "Nom");
                ModelState.AddModelError("", "Ce joueur n'existe pas ou ne joue pas pour ce club");
                return View();
            }

            jpvm.trophees = joueur.Palmares.Select(t => t.Trophee).ToList();
            DateTime tempsApres = DateTime.Now;
            ViewData["temps"] = tempsApres.Subtract(tempsAvant).TotalMilliseconds;
            ViewData["EquipeId"] = new SelectList(_context.Equipes, "EquipeId", "Nom");
            return View(jpvm);
        }

          public async Task chiffrement(string Nas,int JoueurId) 
        { 
            string query = "EXEC Equipes.USP_ChangeNasChiffrement @NAS, @JoueurId"; 
            List<SqlParameter> parameters = new List<SqlParameter> 
                     { 
                         new SqlParameter{ParameterName = "@NAS", Value = Nas}, 
                         new SqlParameter{ParameterName = "@JoueurId", Value = JoueurId} 
 
                          }; 
            await _context.Database.ExecuteSqlRawAsync(query, parameters); 
 
        } 
        public async Task<JoueurRetour> Dechiffrement(string Nas,int JoueurId) 
        { 
            string query = "EXEC Equipes.USP_DEChiffrement @NAS, @JoueurId, @AdminKey"; 
            List<SqlParameter> parameters = new List<SqlParameter> 
                     { 
                         new SqlParameter{ParameterName = "@NAS", Value = Nas}, 
                         new SqlParameter{ParameterName = "@JoueurId", Value = JoueurId}, 
                         new SqlParameter{ParameterName = "@AdminKey", Value = ""} 
                          }; 
            JoueurRetour? joueurRetour = (await _context.JoueurRetours.FromSqlRaw(query, parameters.ToArray()).ToListAsync()).FirstOrDefault(); 
            return joueurRetour; 
        } 



    }
}
