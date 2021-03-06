package GUI;

import ConnectDatabase.DBConnect;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author ND
 */
public class Login extends javax.swing.JFrame {

    /**
     * Creates new form Login
     */
    public Login() {
       
        initComponents();
        
        setIconImage(new ImageIcon(getClass().getResource("/icon/thoat_1.jpg")).getImage());
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        panel1 = new java.awt.Panel();
        jbdangnhap = new javax.swing.JButton();
        jbthoat = new javax.swing.JButton();
        jUsername = new javax.swing.JTextField();
        jPassword = new javax.swing.JPasswordField();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Đăng Nhập");
        setBackground(new java.awt.Color(255, 255, 255));
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setLocation(new java.awt.Point(400, 400));
        setMinimumSize(new java.awt.Dimension(324, 282));
        setResizable(false);
        setSize(new java.awt.Dimension(374, 282));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jbdangnhap.setBackground(new java.awt.Color(255, 255, 255));
        jbdangnhap.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jbdangnhap.setText("Đăng Nhập");
        jbdangnhap.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jbdangnhap.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jbdangnhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbdangnhapActionPerformed(evt);
            }
        });
        jbdangnhap.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jbdangnhapKeyReleased(evt);
            }
        });
        getContentPane().add(jbdangnhap, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 220, 110, 30));

        jbthoat.setBackground(new java.awt.Color(255, 255, 255));
        jbthoat.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jbthoat.setText("Thoát");
        jbthoat.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jbthoat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbthoatActionPerformed(evt);
            }
        });
        getContentPane().add(jbthoat, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 220, 110, 30));

        jUsername.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N
        jUsername.setText("Nhập mã giảng viên hoặc sinh viên");
        jUsername.setToolTipText("");
        jUsername.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(37, 64, 91), 3, true));
        jUsername.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        jUsername.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jUsernameMouseClicked(evt);
            }
        });
        jUsername.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jUsernameKeyReleased(evt);
            }
        });
        getContentPane().add(jUsername, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 100, 230, 40));

        jPassword.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N
        jPassword.setText("Nhập mật khẩu");
        jPassword.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(37, 64, 91), 3, true));
        jPassword.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPasswordMouseClicked(evt);
            }
        });
        jPassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPasswordActionPerformed(evt);
            }
        });
        jPassword.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jPasswordKeyReleased(evt);
            }
        });
        getContentPane().add(jPassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 160, 230, 40));

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/password.png"))); // NOI18N
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 160, 40, 40));

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/user.png"))); // NOI18N
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 100, 40, 40));

        jPanel1.setBackground(new java.awt.Color(51, 84, 109));
        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 270, 540, 50));
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 90, -1, -1));

        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/huss1.jpg"))); // NOI18N
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 90, 100, 130));

        jLabel5.setFont(new java.awt.Font("Arial", 2, 24)); // NOI18N
        jLabel5.setText("Chào mừng đến với hệ thống quản lí trường học");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, 520, 30));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jPasswordKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPasswordKeyReleased
        if (evt.getKeyCode()==evt.VK_ENTER) {
            send();
        }
    }//GEN-LAST:event_jPasswordKeyReleased

    private void jUsernameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jUsernameKeyReleased
        // TODO add your handling code here:
        if (evt.getKeyCode() == evt.VK_ENTER) {
            jPassword.requestFocus();

        }
    }//GEN-LAST:event_jUsernameKeyReleased

    private void jbdangnhapKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbdangnhapKeyReleased
        // TODO add your handling code here:
        if (evt.getKeyCode()==evt.VK_ENTER) {
            send();
        }
    }//GEN-LAST:event_jbdangnhapKeyReleased

    private void jbdangnhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbdangnhapActionPerformed
        send();
    }//GEN-LAST:event_jbdangnhapActionPerformed

    private void jbthoatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbthoatActionPerformed
        System.exit(0);        // TODO add your handling code here:
    }//GEN-LAST:event_jbthoatActionPerformed

    private void jPasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPasswordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jPasswordActionPerformed

    private void jUsernameMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jUsernameMouseClicked
        this.jUsername.setText("");
    }//GEN-LAST:event_jUsernameMouseClicked

    private void jPasswordMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPasswordMouseClicked
        this.jPassword.setText("");
    }//GEN-LAST:event_jPasswordMouseClicked
/*Code Here*/
     public static String nameLogin = "";
     public static String thongBaoMatKhau = "";
    
     
    PreparedStatement ps = null;
    ResultSet rs= null;
    public void resetForm() {
        jUsername.setText("");
        jPassword.setText("");
        jUsername.requestFocus();
    }

    public void send() {
        String strnull = "";
        String user = jUsername.getText();
        String pass = jPassword.getText();
        if (user.equals(strnull) || pass.equals(strnull)) {
            JOptionPane.showMessageDialog(null, "Tài khoản và mật khẩu không được trống !");
            this.resetForm();
        } else if (DBConnect.open()) {
            try {
                boolean blean = true;
                ps = DBConnect.cnn.prepareStatement("select fldTenDangNhap,fldMatKhau from tblNguoiDung ");
                rs = ps.executeQuery();
                do  {
                    rs.next();
                    String username =""+rs.getString("fldTenDangNhap");
                    String password =""+rs.getString("fldMatKhau");
                   
                  
                    if (user.equals(username)&&pass.equals(password)&&username.substring(0, 2).equals("ad")) {
                        
                        nameLogin = username;
                        if(password.equals("admin"))
                            thongBaoMatKhau="Cảnh Báo : Mật Khẩu của bạn hiện đang là mật khẩu mặc định 1! Vui lòng đổi mật khẩu mới !";
                        new MainAdmin().setVisible(true);
                        dispose();
                        break;
          
                    }
                else   
                        if (user.equals(username)&&pass.equals(password)&&username.substring(0, 2).equals("SV")) {
                        nameLogin = username;
                        
                            
                        if(password.equals("1")||password.equals("12"))
                            thongBaoMatKhau="Cảnh Báo : Mật Khẩu của bạn hiện đang là mật khẩu mặc định ! Vui lòng đổi mật khẩu mới !";
                        new MainSV().setVisible(true);
                        dispose();
                        break;
                        
                    }
                        else
                            
                      if (user.equals(username)&& pass.equals(password)&&username.substring(0, 2).equals("GV")) {
                        nameLogin = username;
                        
                       
                        if(password.equals("1")||password.equals("12"))
                            thongBaoMatKhau="Cảnh Báo : Mật Khẩu của bạn hiện đang là mật khẩu mặc định ! Vui lòng đổi mật khẩu mới !";
                        new MainGV().setVisible(true);
                        dispose();
                        break;
                        
                    }
                      else
                       
                        if(username==null){
                  
                        JOptionPane.showMessageDialog(this, "Tên người dùng hoặc mật khẩu không hợp lệ\nXin vui lòng thử lại!", "Đăng nhập thấy bại!", JOptionPane.ERROR_MESSAGE);
                        this.resetForm();
                       

                        }
                    
                    
                   
                }while(nameLogin!=null);


            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                JOptionPane.showMessageDialog(this, "Tên người dùng hoặc mật khẩu không hợp lệ\nXin vui lòng thử lại!", "Đăng nhập thấy bại!", JOptionPane.ERROR_MESSAGE);
                resetForm();
            }
        }

    }
  

                                     
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            
            public void run() {
                
                new Login().setVisible(true);
                
                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPassword;
    private javax.swing.JTextField jUsername;
    private javax.swing.JButton jbdangnhap;
    private javax.swing.JButton jbthoat;
    private java.awt.Panel panel1;
    // End of variables declaration//GEN-END:variables

    
}
