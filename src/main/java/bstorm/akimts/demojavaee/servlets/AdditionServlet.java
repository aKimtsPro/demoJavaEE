package bstorm.akimts.demojavaee.servlets;

import bstorm.akimts.demojavaee.utils.Utilitaire;
import bstorm.akimts.demojavaee.service.AdditionService;
import bstorm.akimts.demojavaee.service.AdditionServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdditionServlet", value = "/add")
public class AdditionServlet extends HttpServlet {

    private final AdditionService service = new AdditionServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utilitaire.writeRequestInfo(request);

        try{
            int membreA = Integer.parseInt( request.getParameter("ma") );
            int membreB = Integer.parseInt( request.getParameter("mb") );

            int rslt = service.add(membreA, membreB);

            PrintWriter out = response.getWriter();

            out.println(
                    """
                    <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <title>Addition</title>
                    </head>
                    <body>
                    """
                    +
                    "<h1>Resultat du calcul : " + rslt + "</h1>"
                    +
                    """
                    </body>
                    </html>
                    """
            );
        }catch (Exception ex){
            response.sendError(400, "parametre(s) invalide(s)");
        }



    }
}
