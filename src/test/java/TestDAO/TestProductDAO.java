package TestDAO;

import com.lite.dao.ProductDAO;
import com.lite.dao.impl.ProductDAOImpl;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

/**
 * @author GnaixEuy
 * @date 2021/6/19 18:31
 */
public class TestProductDAO {
    @Test
    public void queryAllProductsNum() {
        ProductDAO productDAO = new ProductDAOImpl();
        Assertions.assertEquals(3, productDAO.queryAllProductsNum());
    }
}
