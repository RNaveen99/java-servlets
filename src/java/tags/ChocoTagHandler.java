package tags;

import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ChocoTagHandler extends SimpleTagSupport {

    private String texture;
    private ChocoBean chocoBean;
    
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        out.print(chocoBean.getChocolate()[0] + "," + chocoBean.getChocolate()[1]);
        
        try {

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
        } catch (java.io.IOException ex) {
            throw new JspException("Error in ChocoTagHandler tag", ex);
        }
    }

    public void setTexture(String texture) {
        this.texture = texture;
        chocoBean = new ChocoBean();
        chocoBean.setTexture(texture);
    }    
}
