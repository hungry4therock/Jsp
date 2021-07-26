package kr.co.resume.db;

public class Sql {
	
	public static final String SELECT_TERMS = "SELECT * FROM `RP_TERMS`";
	
	public static final String INSERT_MEMBER = "INSERT INTO `RP_MEMBER` SET "
			+ "`uid`=?,"
			+ "`pass`=PASSWORD(?),"
			+ "`name`=?,"
			+ "`nick`=?,"
			+ "`email`=?,"
			+ "`hp`=?,"
			+ "`zip`=?,"
			+ "`addr1`=?,"
			+ "`addr2`=?,"
			+ "`regip`=?,"
			+ "`rdate`=NOW()";
	
	public static final String SELECT_COUNT_EMAIL = "SELECT COUNT(`email`) FROM `RP_MEMBER` WHERE `email`=?";
	public static final String SELECT_COUNT_HP    = "SELECT COUNT(`hp`)    FROM `RP_MEMBER` WHERE `hp`=?";
	public static final String SELECT_COUNT_NICK  = "SELECT COUNT(`nick`)  FROM `RP_MEMBER` WHERE `nick`=?";              
	public static final String SELECT_COUNT_UID   = "SELECT COUNT(`uid`)   FROM `RP_MEMBER` WHERE `uid`=?";
	
	public static final String SELECT_MEMBER   = "SELECT * FROM `RP_MEMBER` WHERE `uid`=? AND `pass`=PASSWORD(?)";
	
	public static final String SELECT_MAX_SEQ = "SELECT MAX(`seq`) FROM `RP_ARTICLE`";
	public static final String SELECT_COUNT_ARTICLE = "SELECT COUNT(*) FROM `RP_ARTICLE` WHERE `parent`=0 AND `cate`=?";
	
	public static final String SELECT_LATESTS  = "SELECT * FROM `RP_ARTICLE` WHERE `cate`='notice' AND `parent`=0 ORDER BY `seq` DESC LIMIT 5";
												
												
	
	public static final String SELECT_ARTICLE  = "SELECT * FROM `RP_ARTICLE` AS a "
												+ "LEFT JOIN `RP_FILE` AS b "
												+ "ON a.seq = b.parent "
												+ "WHERE a.`seq`=?";
	
	public static final String SELECT_ARTICLES = "SELECT a.*, b.`nick` FROM `RP_ARTICLE` AS a "
												+ "JOIN `RP_MEMBER` AS b "
												+ "ON a.uid = b.uid "
												+ "WHERE `parent`=0 AND `cate`=? "
												+ "ORDER BY `seq` DESC "
												+ "LIMIT ?, 10";
	
	public static final String SELECT_COMMENTS = "SELECT a.*, b.nick FROM `RP_ARTICLE` AS a "
												+ "JOIN `RP_MEMBER` AS b "
												+ "ON a.uid = b.uid "
												+ "WHERE `parent`=? "
												+ "ORDER BY `seq` ASC";
	
	public static final String SELECT_FILE = "SELECT * FROM `RP_FILE` WHERE `seq`=?";
	
	
	public static final String INSERT_ARTICLE = "INSERT INTO `RP_ARTICLE` SET "
												+ "`cate`=?,"
												+ "`title`=?,"
												+ "`content`=?,"
												+ "`file`=?,"
												+ "`uid`=?,"
												+ "`regip`=?,"
												+ "`rdate`=NOW()";
	
	public static final String INSERT_COMMENT = "INSERT INTO `RP_ARTICLE` SET "
												+ "`parent`=?,"
												+ "`content`=?,"
												+ "`uid`=?,"
												+ "`regip`=?,"
												+ "`rdate`=NOW()";
	
	public static final String INSERT_FILE = "INSERT INTO `RP_FILE` SET "
												+ "`parent`=?,"
												+ "`oriName`=?,"
												+ "`newName`=?,"
												+ "`rdate`=NOW()";
	
	public static final String UPDATE_ARTICLE = "UPDATE `RP_ARTICLE` SET "
												+ "`title`=?,"
												+ "`content`=? "
												+ "WHERE `seq`=?";
	
	public static final String UPDATE_COMMENT = "UPDATE `RP_ARTICLE` SET "
												+ "`content`=? "
												+ "WHERE `seq`=?";
	
	public static final String UPDATE_ARTICLE_HIT   = "UPDATE `RP_ARTICLE` SET `hit`=`hit`+1 WHERE `seq`=?";
	public static final String UPDATE_COMMENT_PLUS  = "UPDATE `RP_ARTICLE` SET `comment`=`comment`+1 WHERE `seq`=?";
	public static final String UPDATE_COMMENT_MINUS = "UPDATE `RP_ARTICLE` SET `comment`=`comment`-1 WHERE `seq`=?";
	
	public static final String UPDATE_FILE_DOWNLOAD = "UPDATE `RP_FILE`    SET `download`=`download`+1 WHERE `seq`=?";
	
	public static final String DELETE_ARTICLE = "DELETE FROM `RP_ARTICLE` WHERE `seq`=?";
	public static final String DELETE_COMMENT = "DELETE FROM `RP_ARTICLE` WHERE `seq`=?";
	
	
}
