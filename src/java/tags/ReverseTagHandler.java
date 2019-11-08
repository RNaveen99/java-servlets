package tags;

import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ReverseTagHandler extends SimpleTagSupport {

    private String input;

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        StringBuilder s = new StringBuilder(input);
        out.println(s.reverse());
        try {

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
        } catch (java.io.IOException ex) {
            throw new JspException("Error in ReverseTagHandler tag", ex);
        }
    }

    public void setInput(String input) {
        this.input = input;
    }
    
}
