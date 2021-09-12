import com.fasterxml.jackson.core.JsonProcessingException;
import com.qshh.controller.ArticleController;
import org.junit.Test;

/**
 * @Description:
 * @Author qshh
 * @Date 2021/9/7 11:13
 */
public class ControllerTest {

    @Test
    public void selectByType() throws JsonProcessingException {
        ArticleController controller = new ArticleController();
        System.out.println(controller.selectByType("java"));
    }
}
