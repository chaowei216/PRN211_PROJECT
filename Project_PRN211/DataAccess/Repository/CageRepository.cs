﻿using BussinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Repository
{
    public class CageRepository : ICageRepository
    {
        public void AddCage(Cage cage)
        {
            CageDAO.Instance.AddCage(cage);
        }

        public void DeleteCage(Cage cage)
        {
            CageDAO.Instance.DeleteCage(cage);
        }

        public List<Cage> GetAllCages()
        {
            return CageDAO.Instance.GetAllCages();
        }

        public List<Cage> GetAvailableCagesBySpecies(string species) => CageDAO.Instance.GetAvailableCagesBySpecies(species);

        public Cage? GetCageByAnimalId(string animalId) => CageDAO.Instance.GetCageByAnimalId(animalId);

        public Cage GetCageByID(string id)
        {
            return CageDAO.Instance.GetCageByID(id);
        }

        public Cage GetCageByName(string name)
        {
            return CageDAO.Instance.GetCageByName(name);
        }

        public List<Cage> GetCagesByAreaName(string areaName)
        {
            return CageDAO.Instance.GetCagesByAreaName(areaName);
        }

        public void UpdateCage(Cage cage)
        {
            CageDAO.Instance.UpdateCage(cage);
        }
    }
}
