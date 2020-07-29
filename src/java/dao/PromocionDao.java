package dao;

import model.Producto;
import model.Promocion;
import org.hibernate.Query;
import org.hibernate.Session;
import utilitarios.HibernateUtil;

public class PromocionDao {

    public boolean buscarCodigo(String codigo) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "FROM Promocion WHERE codigo='" + codigo + "'";
        Query query = session.createQuery(hql);
        Promocion promocion = (Promocion) query.uniqueResult();
        return promocion != null;

    }

    public Integer obtenerPrecio(String nombre) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "FROM Producto WHERE nombre='" + nombre + "'";
        Query query = session.createQuery(hql);
        Producto producto = (Producto) query.uniqueResult();

        if (producto != null) {
            return producto.getPrecio();
          
        } else {
            return 0;
        }

    }

}
