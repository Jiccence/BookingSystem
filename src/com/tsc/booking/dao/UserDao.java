package com.tsc.booking.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.tsc.booking.bean.AdminBean;
import com.tsc.booking.bean.DatesBean;
import com.tsc.booking.bean.StuBean;
import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.utils.DataSourceUtils;
import com.tsc.booking.utils.Md5Utils;
public class UserDao {
	// 添加教师用户操作
		public void addTeaUser(TeaBean teauser) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句
			//默认用户 state=0 代表未激活
			
			String sql = "insert into teacherifo(uname,state,teapassword,icon) values(?,'0',?,?)";
			runner.update(sql,teauser.getuname(),Md5Utils.md5(teauser.getteapassword()),"images/user_3.jpg");
			String sql1 = "insert into dates(uname) values(?)";
			runner.update(sql1,teauser.getuname());
		}

		public DatesBean finddatesbyname(String name) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句

			String sql = "select * from dates where uname=?";

			return runner.query(sql, new BeanHandler<DatesBean>(DatesBean.class), name);

		}
		public TeaBean findTeaUserByActiveCode(String activecode) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句

			String sql = "select * from teacherifo where activecode=?";

			return runner.query(sql, new BeanHandler<TeaBean>(TeaBean.class), activecode);

		}

		public void activeTeaUserByActivecode(String uname) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句
			String sql = "update teacherifo set state=1 where uname=?";

			runner.update(sql, uname);
		}

		public TeaBean findTeaUserByUserNameAndPassword(String username, String password) throws SQLException {
			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			
			String sql="select * from teacherifo where uname=? and teapassword=?";
			
			return runner.query(sql, new BeanHandler<TeaBean>(TeaBean.class),username,Md5Utils.md5(password));
		}
		
		public void addStuUser(StuBean stuuser) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句
			//默认用户 state=0 代表未激活
			String sql = "insert into studentifo(uname,state,stupassword,icon,fullbool) values(?,'0',?,?,'0')";
			runner.update(sql,stuuser.getuname(),Md5Utils.md5(stuuser.getstupassword()),"images/user2.JPG");
			

		}

		public StuBean findStuUserByActiveCode(String activecode) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句

			String sql = "select * from studentifo where activecode=?";

			return runner.query(sql, new BeanHandler<StuBean>(StuBean.class), activecode);

		}

		public void activeStuUserByActivecode(String activecode) throws SQLException {

			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句
			String sql = "update studentifo set state=1 where uname=?";

			runner.update(sql, activecode);
		}

		public StuBean findStuUserByUserNameAndPassword(String username, String password) throws SQLException {
			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			
			String sql="select * from studentifo where (uname=? or email=?) and stupassword=?";
			
			return runner.query(sql, new BeanHandler<StuBean>(StuBean.class),username,username,Md5Utils.md5(password));
		}

		public void UpdateInfoByTeaBean(TeaBean user) throws SQLException {
			// TODO Auto-generated method stub
			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句
			String username=user.getuname();
			String nickname=user.getnickname();
			//String realname=user.getrealname();
			String email=user.getemail();
			String phonenum=user.getphonenum();
			Date birth=user.getbirth();
			String schoolno=user.getschoolno();
			String sdeptno=user.getsdeptno();
			String majorno=user.getmajorno();
			String sql = "update teacherifo set nickname='"+nickname+"',phonenum='"+phonenum+"',birth='"+birth+"',schoolno='"+schoolno+"',sdeptno='"+sdeptno+"',majorno='"+majorno+"',email='"+email+"'where uname=?";

			runner.update(sql,username);
		}
		public void UpdateInfoByStuBean(StuBean user) throws SQLException {
			// TODO Auto-generated method stub
			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句
			String username=user.getuname();
			String nickname=user.getnickname();
			//String realname=user.getrealname();
			String email=user.getemail();
			String phonenum=user.getphonenum();
			Date birth=user.getbirth();
			String schoolno=user.getschoolno();
			String sdeptno=user.getsdeptno();
			String majorno=user.getmajorno();
			String sql =null;
			if(username!=null&&nickname!=null&&email!=null&&phonenum!=null&&schoolno!=null&&sdeptno!=null)
			{
				sql = "update studentifo set fullbool=1, nickname='"+nickname+"',phonenum='"+phonenum+"',birth='"+birth+"',schoolno='"+schoolno+"',sdeptno='"+sdeptno+"',majorno='"+majorno+"',email='"+email+"'where uname=?";
			}else {
				sql = "update studentifo set nickname='"+nickname+"',phonenum='"+phonenum+"',birth='"+birth+"',schoolno='"+schoolno+"',sdeptno='"+sdeptno+"',majorno='"+majorno+"',email='"+email+"'where uname=?";
			}
/*			sql = "update studentifo set nickname='"+nickname+"',phonenum='"+phonenum+"',birth='"+birth+"',schoolno='"+schoolno+"',sdeptno='"+sdeptno+"',majorno='"+majorno+"',email='"+email+"'where uname=?";*/

			runner.update(sql,username);
		}

		public StuBean findusersbyname(String username) throws SQLException {
			
			// TODO Auto-generated method stub
			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句

			String sql = "select * from studentifo where uname=?";

			return runner.query(sql, new BeanHandler<StuBean>(StuBean.class), username);

			
		}

		public TeaBean findusertbyname(String username) throws SQLException {
			// TODO Auto-generated method stub
			// 1.创建QueryRunner
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句

			String sql = "select * from teacherifo where uname=?";

			return runner.query(sql, new BeanHandler<TeaBean>(TeaBean.class), username);

		}

		public void updatebyname(String uname, List<String> list) throws SQLException {
			// TODO Auto-generated method stub
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			int[] temp=new int[28];
			// 2.执行sql语句
			for(int i=0;i<list.size();i++)
			{
				if(list.get(i)==null)
				{
					temp[i]=0;
				}else {
					temp[i]=1;
				}
			}
			
			String sql =null;
			
			sql = "update dates set m1=?,m2=?,m3=?,m4=?,tu1=?,tu2=?,tu3=?,tu4=?,w1=?,w2=?,w3=?,w4=?,th1=?,th2=?,th3=?,th4=?,f1=?,f2=?,f3=?,f4=?,st1=?,st2=?,st3=?,st4=?,su1=?,su2=?,su3=?,su4=? where uname=?";
			
			runner.update(sql,temp[0],temp[1],temp[2],temp[3],temp[4],temp[5],temp[6],temp[7],temp[8],temp[9],temp[10],temp[11],temp[12],temp[13],temp[14],temp[15],temp[16],temp[17],temp[18],temp[19],temp[20],temp[21],temp[22],temp[23],temp[24],temp[25],temp[26],temp[27],uname);
		}

		public AdminBean findAdmin(String username, String password) throws SQLException {
			// TODO Auto-generated method stub
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

			// 2.执行sql语句

			String sql = "select * from adminifo where adname=? and adpassword =?";

			return runner.query(sql, new BeanHandler<AdminBean>(AdminBean.class), username,password);

			
			
		}

		public Boolean finduserbyemail(String email, String type) throws SQLException {
			// TODO Auto-generated method stub
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			String sql=null;
			// 2.执行sql语句
			if(type.equals("Usertea"))
			{
				sql = "select * from teacherifo where email=?";
				if(runner.query(sql, new BeanHandler<TeaBean>(TeaBean.class), email)==null)
				return false;
			}
			else
			{
				sql="select * from studentifo where email=?";
				if(runner.query(sql, new BeanHandler<StuBean>(StuBean.class), email)==null)
					return false;
			}
				
			
			return true;
			
		}

		public void reset(String email, String password, String type) throws SQLException {
			// TODO Auto-generated method stub
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			String sql=null;
			// 2.执行sql语句
			if(type.equals("Usertea"))
			{
				sql = "update teacherifo set teapassword=? where email=?";
				runner.update(sql,Md5Utils.md5(password),email);
					
			}else {
				sql = "update studentifo set stupassword=? where email=?";
				runner.update(sql,Md5Utils.md5(password),email);
			}
			
		}
		
		
}
