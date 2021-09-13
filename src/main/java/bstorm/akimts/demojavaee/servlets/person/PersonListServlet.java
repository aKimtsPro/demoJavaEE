package bstorm.akimts.demojavaee.servlets.person;

import bstorm.akimts.demojavaee.models.Personne;
import bstorm.akimts.demojavaee.service.PersonneService;
import bstorm.akimts.demojavaee.service.PersonneServiceImpl;
import bstorm.akimts.demojavaee.service.PersonneServiceMock;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "PersonListServlet", value = "/person/list")
public class PersonListServlet extends HttpServlet {

    private final PersonneService service = PersonneServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Personne> persons = service.getPersonnes();

        PrintWriter out = response.getWriter();

        out.println("""
                <!DOCTYPE html>
                <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <title>liste de personne</title>
                </head>
                <body>
                    <h1>Liste de personne</h1>
                    <ul>
                """);

        for (Personne person : persons) {
            out.println("<li> "+ person.getNom() +" - " + person.getAge() + " ans </li>");
        }

        out.println(
                """
                    </ul>
                </body>
                </html>
                """);

    }

}
