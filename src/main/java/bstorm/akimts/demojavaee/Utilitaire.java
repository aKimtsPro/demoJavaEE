package bstorm.akimts.demojavaee;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

public class Utilitaire {

    public static void writeRequestInfo(HttpServletRequest request){
        System.out.println("\u001B[33m>> ADDRESS\u001B[0m");
        System.out.println( request.getRequestURI() );
        System.out.println( request.getRequestURL() );
        System.out.println( request.getQueryString() );
        System.out.println( request.getRemoteAddr() );

        System.out.println("\u001B[33m>> METHOD\u001B[0m");
        System.out.println( request.getMethod() );

        System.out.println("\u001B[33m>> PARAMS\u001B[0m");
        Enumeration<String> params = request.getParameterNames();
        while(params.hasMoreElements()){
            String param = params.nextElement();
            System.out.print(param);
            System.out.print(" : ");
            System.out.println(request.getParameter(param));
        }

        System.out.println("\u001B[33m>> HEADERS\u001B[0m");
        Enumeration<String> headers = request.getHeaderNames();
        while(headers.hasMoreElements()){
            String header = headers.nextElement();
            System.out.print(header);
            System.out.print(" : ");
            System.out.println(request.getHeader(header));
        }

        System.out.println("\u001B[33m>> PATH\u001B[0m");
        System.out.println( request.getContextPath() );
        System.out.println( request.getServletPath() );

        System.out.println("\u001B[33m>> LOCAL\u001B[0m");
        System.out.println( request.getLocalName() );
        System.out.println( request.getLocalPort() );
        System.out.println( request.getLocalAddr() );

        System.out.println("\u001B[33m>> OTHER\u001B[0m");
        System.out.println( request.getContentType() );
        System.out.println( request.getProtocol() );
    }

}
