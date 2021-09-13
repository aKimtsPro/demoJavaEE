package bstorm.akimts.demojavaee.servlets.person;

import bstorm.akimts.demojavaee.models.Personne;
import bstorm.akimts.demojavaee.service.PersonneService;
import bstorm.akimts.demojavaee.service.PersonneServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PersonAddServlet", value = "/person/add")
public class PersonAddServlet extends HttpServlet {

    private final PersonneService service = PersonneServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String nom = req.getParameter("nom");
        String age = req.getParameter("age");

        if( nom != null && age != null ){

            try {
                int ageInt = Integer.parseInt(age);
                Personne p = new Personne(nom, ageInt);
                service.add( p );
                req.getRequestDispatcher("/person/list").forward(req, resp);
            }catch (NumberFormatException ex) {
                resp.sendError(400, "l'age doit être un nombre");
            }
        }
        else {
            resp.sendError(400, "Un paramètre est manque parmis: nom(chaine de caract.) et age(nombre)");
        }

    }
}
