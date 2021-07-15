import javax.swing.JOptionPane;

class Main {
  public static void main(String[] args) {
    programa();
  }
  public static void programa(){
    double m = 0;
    double j = 0;
        String juros = JOptionPane.showInputDialog("Digite s para juros simples \ndigite c para juros compostos.");
        double c = Double.parseDouble(JOptionPane.showInputDialog("digite o capital inicial"));
        double i = Double.parseDouble(JOptionPane.showInputDialog("digite a taxa"))/100;
        int t = Integer.parseInt(JOptionPane.showInputDialog("digite o tempo"));

        if(juros.equals ("c") || juros.equals ("c")) {
          m = c*Math.pow((1+i),t);
          j = m-c;
          JOptionPane.showMessageDialog(null,"juros"+j);
          JOptionPane.showMessageDialog(null,"Montante"+m);
        }
        else if (juros.equals ("s") || juros.equals ("s")) {
          j = c*i*t;
          m = c=j;
          JOptionPane.showMessageDialog(null,"juros"+j);
          JOptionPane.showMessageDialog(null,"Montante"+m);
        }
        else{
        JOptionPane.showMessageDialog(null,"Digitou algo inválido!");

        }
    

  }
}
