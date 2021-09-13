package bstorm.akimts.demojavaee.service;

import bstorm.akimts.demojavaee.models.Personne;

import java.util.List;

public class PersonneServiceMock implements PersonneService {

    // region singleton
    private PersonneServiceMock() {}
    private static PersonneServiceMock instance;
    public static PersonneServiceMock getInstance(){
        return instance == null ? instance = new PersonneServiceMock() : instance;
    }
    // endregion

    @Override
    public List<Personne> getPersonnes() {
        return List.of(
                new Personne("luc", 20),
                new Personne("marie", 30),
                new Personne("dominique", 40)
        );
    }

    @Override
    public void add(Personne toAdd) {
    }
}
