#include "tuile.h"

//! \file fichier tuile
//! \date 17/11/16
//! \version 1.0
//!


Tuile::Tuile(int val)
    :m_type{(TypeTuile)val}, m_extremiteCarte{false}
{
}

//!
//! \brief Accesseur en lecture de l'attribut estMarchable
//! \return si on peut marcher sur la tuile ou pas
//! \author mleothaud
//! \date 16/11/2016
//! \version 1.0
//!

bool Tuile::obtenirEstMarchable() const
{
    return (m_type == Herbe || m_type == Sable || m_type == Beton || m_type == Terre);
}


//!
//! \brief Accesseur en lecture de l'attribut peutApparaitre
//! \return si un objet ou un zombie peut apparaitre sur la case
//! \author mleothaud
//! \date 16/11/2016
//! \version 1.0
//!

bool Tuile::obtenirPeutApparaitre() const
{
    return obtenirEstMarchable();
}

TypeTuile Tuile::obtenirType() const{
    return m_type;
}


void Tuile::definirExtremiteCarte(bool extremite)
{
    m_extremiteCarte = extremite;
}

bool Tuile::obtenirExtremiteCarte() const
{
    return m_extremiteCarte;
}
