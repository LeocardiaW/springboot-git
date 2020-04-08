import com.hbue.Application;
import com.hbue.pojo.Movie;
import com.hbue.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class)
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void testselectAllMovies(){
        List<Movie> movies = userService.selectAllMovies();
        for(Movie movie : movies){
            System.out.println(movie);
        }
    }

}
