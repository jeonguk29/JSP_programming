package repository;

//JDBC 프로그래밍 시 필요한 클래스
import java.sql.Connection; // DBMS와 연결 관리를 담당하는 클래스
import java.sql.PreparedStatement; // 연결된 DBMS에 전달한 SQL문장을 조작하기 위한 클래스
import java.sql.ResultSet; // 질의 결과를 조작하기 위한 클래스
import java.sql.Statement; // 연결된 DBMS에 전달한 SQL 문장을 조작하기 위한 클래스

public interface DAO {

    Connection getConnection();

    void closeResources(Connection conn, Statement stmt, PreparedStatement pstmt, ResultSet rs);

}
