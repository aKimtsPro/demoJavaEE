package bstorm.akimts.demojavaee.service;

import bstorm.akimts.demojavaee.models.Personne;

import java.util.List;

public interface PersonneService {

    List<Personne> getPersonnes();
    void add(Personne toAdd);

}
