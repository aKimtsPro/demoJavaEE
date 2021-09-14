package bstorm.akimts.demojavaee.service;

import bstorm.akimts.demojavaee.models.Personne;

import java.util.ArrayList;
import java.util.List;

public class PersonneServiceImpl implements PersonneService {

    // region singleton
    private PersonneServiceImpl() {}
    private static PersonneServiceImpl instance;
    public static PersonneServiceImpl getInstance(){
        return instance == null ? instance = new PersonneServiceImpl() : instance;
    }

    // endregion

    private final List<Personne> personnes = new ArrayList<>();

    @Override
    public List<Personne> getPersonnes() {
        return new ArrayList<>(personnes);
    }

    @Override
    public void add(Personne toAdd) {
        personnes.add(toAdd);
    }

    @Override
    public void delete(int position) {
        personnes.remove(position);
    }
}
