package modeloDatos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import modelos.Ofertas;

import org.springframework.context.ApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class ModeloHome {

    //Variable para guardar nuestro ServletContext que le pasamos por parametro desde el contolador
    private ServletContext servlet;
    private Connection cn;

    ResultSet rs;
    Statement st;

    //Constructor
    public ModeloHome(ServletContext svc) {
        this.servlet = svc;
    }

    private Object recuperarBean(String nombreBean) {
        ApplicationContext contexto = WebApplicationContextUtils.getRequiredWebApplicationContext(this.servlet);
        Object bean = contexto.getBean(nombreBean);
        return bean;
    }

    private void conectarOracle() throws SQLException {
        DriverManagerDataSource drv = (DriverManagerDataSource) this.recuperarBean("dataSource");
        this.cn = drv.getConnection();
    }

    public ArrayList<Ofertas> getOfertas() {

        try {
            conectarOracle();
            ArrayList<Ofertas> lista = new ArrayList();
            Statement st = this.cn.createStatement();
            ResultSet rs = st.executeQuery("SELECT id_ofertas, imagenes, titulo, descripcion, descuento  FROM ofertas");
            while (rs.next()) {
                Ofertas o = new Ofertas();
                o.setImagenes(rs.getString("imagenes"));
                o.setTitulo(rs.getString("titulo"));
                o.setDescripcion(rs.getString("descripcion"));
                o.setDescuento(rs.getString("descuento"));
                lista.add(o);
            }
            return lista;
        } catch (SQLException ex) {
            System.out.println("Error leyendo ofertas: " + ex);
        }
        return null;

    }

    public String getDatos1(String numero) {

        try {
            conectarOracle();
            int num = Integer.parseInt(numero);
            
            st = this.cn.createStatement();
            rs = st.executeQuery("SELECT count(doctor_no) as doctores FROM doctor where hospital_cod = '" + num + "'");
            rs.next();

            String total;

            total = Integer.toString(rs.getInt("doctores"));          

            return total;
            
        } catch (SQLException ex) {
            System.out.println("Error leyendo hospitales: " + ex);
        }
        return null;

    }
    
    public String getDatos2(String numero) {

        try {
            conectarOracle();
            int num = Integer.parseInt(numero);
            
            st = this.cn.createStatement();
            rs = st.executeQuery("SELECT count(empleado_no) as enfermeros FROM plantilla where hospital_cod = '" + num + "'");
            rs.next();

            String total;

            total = Integer.toString(rs.getInt("enfermeros"));            

            return total;
            
        } catch (SQLException ex) {
            System.out.println("Error leyendo hospitales: " + ex);
        }
        return null;

    }

    public Object getModales() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
