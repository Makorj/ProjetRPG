TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

LIBS+=`sdl-config --libs` -lSDL_image -lSDL_ttf
INCLUDEPATH+=-I/usr/include/SDL/

QMAKE_CXXFLAGS += -std=c++11 -pedantic -Wall -Wextra
SOURCES += \
    vue/vue.cpp \
    controleur/controleur.cpp \
    modele/modele.cpp \
    modele/statistique.cpp \
    modele/temps.cpp \
    modele/tuile.cpp \
    modele/vie.cpp \
    modele/vivre.cpp \
    modele/zone.cpp \
    modele/objet.cpp \
    modele/personnage.cpp \
    modele/quete.cpp \
    modele/arme.cpp \
    modele/campement.cpp \
    modele/carte.cpp \
    modele/combat.cpp \
    modele/competence.cpp \
    modele/equipe.cpp \
    modele/humain.cpp \
    modele/inventaire.cpp \
    modele/joueur.cpp \
    main.cpp \
    modele/niveau.cpp \
    modele/zombie.cpp \
    vue/bouton.cpp \
    vue/chargementfeuilledesprite.cpp \
    vue/ecranmenuprincipal.cpp \
    vue/sprite.cpp \
    vue/textesdl.cpp \
    vue/actionsboutons.cpp \
    vue/ecrangeneral.cpp \
    vue/ecranjeuprincipal.cpp \
    observateur.cpp \
    observable.cpp \
    vue/dictionnairedeboutons.cpp \
    save/sauvegarde.cpp \
    ../ext/tinyxml/tinystr.cpp \
    ../ext/tinyxml/tinyxml.cpp \
    ../ext/tinyxml/tinyxmlparser.cpp \
    ../ext/tinyxml/tinyxmlerror.cpp \
    vue/ecranequipe.cpp \
    vue/ecraninventaire.cpp

include(deployment.pri)
qtcAddDeployment()

HEADERS += \
    vue/vue.h \
    controleur/controleur.h \
    modele/modele.h \
    modele/statistique.h \
    modele/temps.h \
    modele/tuile.h \
    modele/vie.h \
    modele/vivre.h \
    modele/zone.h \
    modele/objet.h \
    modele/personnage.h \
    modele/quete.h \
    modele/arme.h \
    modele/campement.h \
    modele/carte.h \
    modele/combat.h \
    modele/competence.h \
    modele/equipe.h \
    modele/humain.h \
    modele/inventaire.h \
    modele/joueur.h \
    modele/actioncombat.h \
    modele/niveau.h \
    direction.h \
    modele/zombie.h \
    vue/bouton.h \
    vue/chargementfeuilledesprite.h \
    vue/ecranmenuprincipal.h \
    vue/sprite.h \
    vue/textesdl.h \
    vue/typebouton.h \
    vue/typeecran.h \
    vue/actionsboutons.h \
    vue/constantesbouton.h \
    vue/ecrangeneral.h \
    vue/ecranjeuprincipal.h \
    observateur.h \
    observable.h \
    vue/dictionnairedeboutons.h \
    save/sauvegarde.h \
    ../ext/tinyxml/tinystr.h \
    ../ext/tinyxml/tinyxml.h \
    vue/ecranequipe.h \
    vue/ecraninventaire.h \
    vue/policetexte.h
