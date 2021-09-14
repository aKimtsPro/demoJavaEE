package bstorm.akimts.demojavaee.service;

public class AdditionServiceImpl implements AdditionService{

    public AdditionServiceImpl() {
        System.out.println("par ici");
    }

    @Override
    public int add(int ma, int mb) {
        return ma + mb;
    }
}
