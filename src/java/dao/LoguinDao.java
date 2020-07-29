
package dao;

import model.Usuario;
import org.hibernate.Query;
import org.hibernate.Session;
import utilitarios.HibernateUtil;



public class LoguinDao {
    
    //
    public Usuario encontrarUsuario(String username){
        //Tipo de dato: String, Integer
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "FROM Usuario WHERE username='"+username+"'";
        Query query = session.createQuery(hql);
        Usuario usuario = (Usuario)query.uniqueResult(); //Cast
        return usuario;
        
    }
    
}
