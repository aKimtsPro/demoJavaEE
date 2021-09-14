package bstorm.akimts.demojavaee.servlets.person;

import bstorm.akimts.demojavaee.service.PersonneService;
import bstorm.akimts.demojavaee.service.PersonneServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PersonDeleteServlet", value = "/person/delete")
public class PersonDeleteServlet extends HttpServlet {

    private final PersonneService service = PersonneServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        out.println("<h2>Formulaire ajout personne</h2>");
        out.println("<form action=\""+request.getContextPath()+"/person/delete\" method=\"post\">");
        out.println(
                """
                    <label for="pos">position de la person dans la liste</label>
                    <input type="number" id="pos" name="pos"><br>
                            
                    <button type="submit">soumettre</button>
                            
                </form>
                """);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String position = request.getParameter("pos");

        if(position != null){
            try{
                int pos = Integer.parseInt(position);
                service.delete(pos);
                response.sendRedirect(request.getContextPath()+"/person/list");
            }
            catch (NumberFormatException | IndexOutOfBoundsException ex){
                response.sendError(400, "position invalide");
            }
        }else {
            response.sendError(400,"position manquante");
        }

    }
}
