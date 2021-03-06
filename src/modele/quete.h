#ifndef quete_h
#define quete_h

#include <string>
#include "objet.h"
#include <ctime>

class Quete
{
private:
    std::string m_nom;
    std::string m_description;
    int m_valeurObjectif;
    int m_valeurActuelle;
    int m_recompenseExperience;
    Objet* m_recompense;

    std::clock_t m_tempsDebutQuete;
    std::clock_t m_tempsDebutPause;
    int m_secondesJeuPause;

public:
    Quete() = default;
    Quete(std::string nom, std::string description, int valeurObjectif, int recompenseExperience, Objet* recompense);
    Quete(const Quete& copie) = default;

    Objet* obtenirRecompense() const;
    int obtenirValeurAvancement() const;
    int obtenirValeurObjectif() const;
    int obtenirRecompenseExp() const;
    void definirRecompense(Objet obj);
    void definirRecompenseExp(int valeur);
    void demarrerTimer();
    std::string obtenirStringTemps();
    bool queteTerminee();
    void miseEnPause();
    void reprise();

};


#endif
