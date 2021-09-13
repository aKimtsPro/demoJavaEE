package bstorm.akimts.demojavaee.servlets.addition;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdditionFormServlet", value = "/add/form")
public class AdditionFormServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.getWriter().println(
                """
                <!DOCTYPE html>
                <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <title>liste de personne</title>
                </head>
                <body>
                                
                    <h1>Formulaire addition</h1>
                                
                    <form action="/demoJavaEE_war_exploded/add/rslt" method="post">
                                
                        <label for="ma">membre a</label>
                        <input type="number" id="ma" name="ma"><br>
                                
                        <label for="mb">membre b</label>
                        <input type="number" id="mb" name="mb"><br>
                                
                        <button type="submit">soumettre</button>
                                
                    </form>
                                
                </body>
                </html>
                """
        );

    }
}
