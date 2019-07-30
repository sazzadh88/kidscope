package kids;

import java .io.*;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.naming.NamingException;

import com.sun.org.apache.xalan.internal.xsltc.runtime.StringValueHandler;

import java.util.Calendar;
public class grahanila  extends definition{
	public grahanila( ) {
		 
		}
	private
	Statement st;
	ResultSet rst;
	kidsdatasource ds;
	definition dfn=new definition();
	int birth_timehour;
	int birth_timemin;
	int birth_timesec ;
	String sex;
	String religion;
	String dealeNo;
	String dealeName;
	String langugeName;
	String fathername;
	String mothername;
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getDealeNo() {
		return dealeNo;
	}
	public void setDealeNo(String dealeNo) {
		this.dealeNo = dealeNo;
	}
	public String getDealeName() {
		Map<String, Object> sess=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sess.get("DealerName");

		 
		return (String)sess.get("DealerName");
	}
	public void setDealeName(String dealeName) {
		this.dealeName = dealeName;
	}
	public String getLangugeName() {
		String lname="";
		switch (language) {
		case 0:
			lname="English";
			break;
		case 1:
			lname="Malayalam";
			break;
		default:
			break;
		}
		return lname;
	}
	public void setLangugeName(String langugeName) {
		this.langugeName = langugeName;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFather(String fathername) {
		this.fathername = fathername;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMother(String mothername) {
		this.mothername = mothername;
	}
	public int getBirth_timehour() {
		return birth_timehour;
	}
	public void setBirth_timehour(int birth_timehour) {
		this.birth_timehour = birth_timehour;
	}
	public int getBirth_timemin() {
		return birth_timemin;
	}
	public void setBirth_timemin(int birth_timemin) {
		this.birth_timemin = birth_timemin;
	}
	public int getBirth_timesec() {
		return birth_timesec;
	}
	public void setBirth_timesec(int birth_timesec) {
		this.birth_timesec = birth_timesec;
	}
	int fcnt=0;
	int forignlocalcount=0;
	Date t  =    new Date();
    Date birth_date =   new Date(t.getTime());//use value
    Date birth_date1 =  new Date( t.toGMTString());
    Date sitime =  new Date( t.toGMTString());
	int moon_min=0;int moon_sign=0;
    int placeid;
    int ddeg1;
	int dmin1;
	int dsign1;
	int ddeg2;
	int dmin2;
	int dsign2;
	Integer rsign;
	Integer rmin;
	Integer rdeg;
	int star;
	int birthnum=0;
    int desno=0;
    String bpred="";
    String dpred="";
	String longitude;
	String ragam;
	int language=1;
	String sunsignMoon;
	int rsn[]=new int[14];
	float n[]=new float[14];
	String fdasa="";
	String Cplace="";
	String siderialtime="";
	String lat="";
	String legnumsign="";
	String ayanam="";
	String thithi="";
	String yoga ="";
	String karana="";
	String starnam;
	String starname1;
	String stardetails1;
	String stardetails2;
	String graha;
	String navamsaka;
	String localtimestatus;
    int isthour  = 82;
	int istmin   = 30;
    int siderialhour;
    int siderialmin;
    int siderialsec;
	int charam=1;
	int sthiram=9;
	int ufayam=5;
	int val[] =new int[14];
	int pval[][][]=new int [10][10][10];
	int pid[]=new int [10]; 
	String pos1;String pos2;String pos3;String pos4;String pos5;String pos6;
	String pos7;String pos8;String pos9;String pos10;String pos11;String pos12;
	String npos1;String npos2;String npos3;String npos4;String npos5;String npos6;
	String npos7;String npos8;String npos9;String npos10;String npos11;String npos12;
	String parentname="";
	String welcome="";
	String prediction;
	Integer week;
	public String getRagam() {
		return ragam;
	}
	public void setRagam(String ragam) {
		this.ragam = ragam;
	}
	public Integer getWeek() {
		return week;
	}
	public void setWeek(Integer week) {
		this.week = week;
	}
	public int getDesno() {
		return desno;
	}
	public void setDesno(int desno) {
		this.desno = desno;
	}
	public String getBpred() {
		return bpred;
	}
	public void setBpred(String bpred) {
		this.bpred = bpred;
	}
	public String getDpred() {
		return dpred;
	}
	public void setDpred(String dpred) {
		this.dpred = dpred;
	}public int getBirthnum() {
		return birthnum;
	}
	public void setBirthnum(int birthnum) {
		this.birthnum = birthnum;
	}
	public String getPrediction() {
		return prediction;
	}
	public void setPrediction(String prediction) {
		this.prediction = prediction;
	}
	public String getWelcome() {
		return welcome;
	}
	public void setWelcome(String welcome) {
		this.welcome = welcome;
	}
	public String getParentname() {
		return parentname;
	}
	public void setParentname(String parentname) {
		this.parentname = parentname;
	}
	public String getWeekname() {
		return weekname;
	}
	public void setWeekname(String weekname) {
		this.weekname = weekname;
	}
	String weekname=" ";
	public String getKarana() {
		return karana;
	}
	public void setKarana(String karana) {
		this.karana = karana;
	}
	public String getYoga() {
		return yoga;
	}
	public void setYoga(String yoga) {
		this.yoga = yoga;
	}
	public String getThithi() {
		return thithi;
	}
	public void setThithi(String thithi) {
		this.thithi = thithi;
	}
	public String getAyanam() {
		return ayanam;
	}
	public void setAyanam(String ayanam) {
		this.ayanam = ayanam;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getSiderialtime() {
		return siderialtime;
	}
	public void setSiderialtime(String siderialtime) {
		this.siderialtime = siderialtime;
	}
	public String getFdasa() {
		return fdasa;
	}
	public void setFdasa(String fdasa) {
		this.fdasa = fdasa;
	}
	int moon_deg=0;public int getMoon_deg() {
		return moon_deg;
	}
	public void setMoon_deg(int moon_deg) {
		this.moon_deg = moon_deg;
	}
	public int getMoon_min() {
		return moon_min;
	}
	public void setMoon_min(int moon_min) {
		this.moon_min = moon_min;
	}
	public int getMoon_sign() {
		return moon_sign;
	}
	public void setMoon_sign(int moon_sign) {
		this.moon_sign = moon_sign;
	}
    public int getLanguage() {
			return language;
		}
	public void setLanguage(int language) {
			this.language = language;
		}
    public String getLongitude() {
			String x= getlongitudeHour(this.placeid).toString();
			String y= getLongitudeMin(this.placeid).toString();
			 if(isEast(this.placeid))         
			 {
				 longitude= x+"E"+y;
			 }					 
			 else
			 {
				 longitude= x+"W"+y;
			 }					 	 
			return longitude;
		}
	public void setLongitude(String longitude) {
			this.longitude = longitude;
		}
    public String getStardetails1() {
			return stardetails1;
		}
	public void setStardetails1(String stardetails1) {
			this.stardetails1 = stardetails1;
		}
	public String getStardetails2() {
			return stardetails2;
		}
	public void setStardetails2(String stardetails2) {
			this.stardetails2 = stardetails2;
		}
	public String getGraha() {
			return graha;
		}
	public void setGraha(String graha) {
			this.graha = graha;
		}
	public String getNavamsaka() {
			return navamsaka;
		}
	public void setNavamsaka(String navamsaka) {
			this.navamsaka = navamsaka;
		}
	public String getStarnam() {
			return starnam;
		}
	public void setStarnam(String starnam) {
			this.starnam = starnam;
		}
	public String getSunsignMoon() {
			return sunsignMoon;
		}
	public void setSunsignMoon(String sunsignMoon) {
			this.sunsignMoon = sunsignMoon;
		}
	public float[] getN() {
			return n;
		}
	public void setN(float[] n) {
			this.n = n;
		}
	public int[] getRsn() {
			return rsn;
		}
	public void setRsn(int[] rsn) {
			this.rsn = rsn;
		}
		
	public String getNpos1() {
			return npos1;
		}
	public void setNpos1(String npos1) {
			this.npos1 = npos1;
		}
	public String getNpos2() {
			return npos2;
		}
	public void setNpos2(String npos2) {
			this.npos2 = npos2;
		}
	public String getNpos3() {
			return npos3;
		}
	public void setNpos3(String npos3) {
			this.npos3 = npos3;
		}
	public String getNpos4() {
			return npos4;
		}
	public void setNpos4(String npos4) {
			this.npos4 = npos4;
		}
	public String getNpos5() {
			return npos5;
		}
	public void setNpos5(String npos5) {
			this.npos5 = npos5;
		}
	public String getNpos6() {
			return npos6;
		}
	public void setNpos6(String npos6) {
			this.npos6 = npos6;
		}
	public String getNpos7() {
			return npos7;
		}
	public void setNpos7(String npos7) {
			this.npos7 = npos7;
		}
	public String getNpos8() {
			return npos8;
		}
	public void setNpos8(String npos8) {
			this.npos8 = npos8;
		}
	public String getNpos9() {
			return npos9;
		}
	public void setNpos9(String npos9) {
			this.npos9 = npos9;
		}
	public String getNpos10() {
			return npos10;
		}
	public void setNpos10(String npos10) {
			this.npos10 = npos10;
		}
	public String getNpos11() {
			return npos11;
		}
	public void setNpos11(String npos11) {
			this.npos11 = npos11;
		}
	public String getNpos12() {
			return npos12;
		}
	public void setNpos12(String npos12) {
			this.npos12 = npos12;
		}
	public int[] getVal() {
			return val;
		}
	public void setVal(int[] val) {
			this.val = val;
		}
	public String getLegnumsign() {
			return legnumsign;
		}
	public void setLegnumsign(String legnumsign) {
			this.legnumsign = legnumsign;
		}
	
	public String getPos1() {
			return pos1;
		}
	public void setPos1(String pos1) {
			this.pos1 = pos1;
		}
	public String getPos2() {
			return pos2;
		}
	public void setPos2(String pos2) {
			this.pos2 = pos2;
		}
	public String getPos3() {
			return pos3;
		}
	public void setPos3(String pos3) {
			this.pos3 = pos3;
		}
	public String getPos4() {
			return pos4;
		}
	public void setPos4(String pos4) {
			this.pos4 = pos4;
		}
	public String getPos5() {
			return pos5;
		}
	public void setPos5(String pos5) {
			this.pos5 = pos5;
		}
	public String getPos6() {
			return pos6;
		}
	public void setPos6(String pos6) {
			this.pos6 = pos6;
		}
	public String getPos7() {
			return pos7;
		}
	public void setPos7(String pos7) {
			this.pos7 = pos7;
		}
	public String getPos8() {
			return pos8;
		}
	public void setPos8(String pos8) {
		this.pos8 = pos8;
		}
	public String getPos9() {
			return pos9;
		}
	public void setPos9(String pos9) {
			this.pos9 = pos9;
		}
	public String getPos10() {
			return pos10;
		}
	public void setPos10(String pos10) {
			this.pos10 = pos10;
		}
	public String getPos11() {
			return pos11;
		}
	public void setPos11(String pos11) {
			this.pos11 = pos11;
		}
	public String getPos12() {
			return pos12;
		}
	public void setPos12(String pos12) {
			this.pos12 = pos12;
		}
	public int[] getPid() {
				return pid;
			}
	public void setPid(int[] pid) {
				this.pid = pid;
			}
	public String getStarname1() {
			return starname1;
		}

	public void setStarname1(String starname1) {
			this.starname1 = starname1;
		}
	public Integer getRsign() {
			return rsign;
		}

	public void setRsign(Integer rsign) {
			this.rsign  =   rsign;
		}
	public Integer getRmin() {
			return rmin;
		}
	public void setRmin(Integer rmin) {
			this.rmin  =   rmin;
		}
	public Integer getRdeg() {
			return rdeg;
		}
	public void setRdeg(Integer rdeg) {
			this.rdeg =   rdeg;
		}
	public Date getSitime() {
			return sitime;
		}
	public void setSitime(Date sitime) {
			this.sitime = sitime;
		}
	public Date getBirth_date1() {
			return birth_date1;
		}
    public void setBirth_date1(Date birth_date1) {
			this.birth_date1 = birth_date1;
		}
	public String getCplace() {
			return Cplace;
		}
	public void setCplace(String cplace) {
			Cplace = cplace;
		}
	public int getPlaceid() {
			return placeid;
		}
	public void setPlaceid(int placeid) {
			this.placeid  =  placeid;
		}
    public Date getBirth_date() {
			return birth_date;
		}
	public void setBirth_date(Date birth_date) {
			this.birth_date  =   birth_date;
		}
	public  String GetLogarithm()//table X
		{
		return"";
		}
  		public int getplanetDegree(int planetid,java.sql.Date birthDate)//table7(629)
        {
        	int ddeg =  0;
        	
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc =  FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    			   	     String s=planetSql(planetid,birthDate);
    			         	rst = st.executeQuery(s); 			
    				
    						if(rst.next())
    						{
    						ddeg = rst.getInt(2);
    						 
    						}	
    				rst.close();					
    				ds.closeCon();
    			}	
    			catch (Exception e) 
    		        {
    		    	   fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		       
    	      return ddeg;
               }
		
		public int getplanetMinute(int planetid,java.sql.Date birthDate)//table7(629)
        {
        	int dmin = 0;
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc = FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    			     String s=planetSql(planetid,birthDate);
			         	rst = st.executeQuery(s); 		
    				   				
    						if(rst.next())
    						{
    							dmin = rst.getInt(3);
    						   							
    						}	
    						rst.close();						
    				        ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		    
    		       return dmin;
        	 
        }
		public int getplanetSign(int planetid,java.sql.Date birthDate)//table7(629)
        {
        	int dsign = 0;
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc =  FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    			     String s=planetSql(planetid,birthDate);
			         	rst = st.executeQuery(s); 		
    					if(rst.next())
    						{
    							dsign = rst.getInt(4);
     						}	
    						rst.close();						
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		    
    		       return dsign;
        	 
        }
		public String planetSql(int planetid,java.sql.Date birthDate)//table7(629)
        {
		
       	String sqlvalue="";
    	   	
    		switch (planetid)
    		{
			case 1:sqlvalue="select * from ephemerissun  where date='"+birthDate+"'";
			break;
			case 2:sqlvalue="select * from ephemerismercury  where date='"+birthDate+"'";
			break;
			case 3:sqlvalue="select * from ephemerisvenus  where date='"+birthDate+"'";
			break;
			case 4:sqlvalue="select * from ephemerismars  where date='"+birthDate+"'";
			break;
			case 5:sqlvalue="select * from ephemerisjupiter  where date='"+birthDate+"'";
			break;
			case 6:sqlvalue="select * from ephemerissaturn  where date='"+birthDate+"'";
			break;
			case 7:sqlvalue="select * from ephemerisuranus  where date='"+birthDate+"'";
			break;
			case 8:sqlvalue="select * from ephemerisneptune  where date='"+birthDate+"'";
			break;
			case 9 :sqlvalue="select * from ephemerispluto  where date='"+birthDate+"'";
			break;
			case 10:sqlvalue="select * from ephemerisrahu where date='"+birthDate+"'";
			break;
			case 11:sqlvalue="select * from ephemerisketu where date='"+birthDate+"'";
			break;
			case 12:sqlvalue="select * from ephemerismoon where date ='"+birthDate+"'";
			break;
			default:			
			}
           	
        	return sqlvalue;
        }
		public Date forignlocaltime()
		{  Date flocal=new Date();
	     String gmt="";Integer gval=0;
		 int fhour=0; int  lhour=0;int lmin=0;int lsec=0; 
			kidsdatasource ds = new kidsdatasource();
		     FacesContext fc =  FacesContext.getCurrentInstance();
		try 
		{
			    st = ds.getConnection().createStatement();
			   	rst = st.executeQuery("select * from location  where placeid ="+placeid);	
			    if(rst.next())
					{
					 gmt = rst.getString(9);
					}	
						rst.close();						
				        ds.closeCon();
				        int  forignlmin = getLongitudeMin(placeid);   			        	
						int  forignlhour =getlongitudeHour(placeid);
			    		int forignlsec  = forignlmin *4;
			    		 forignlmin  = forignlhour*4;
			    		 forignlhour=0;
			         	if(forignlsec >=60)
			    		 {
			    		 forignlmin =  forignlmin+(forignlsec /60);
			    		 forignlsec = forignlsec%60;
			    		 }
			    	  if( forignlmin >=60)
			    	     {
			    		 forignlhour =   forignlhour+( forignlmin/60);
			    		 forignlmin =  forignlmin%60;
			    		 }
			    	    lhour  =  birth_date.getHours();
			       		lmin   =  birth_date.getMinutes(); 
			       		lsec   =  birth_date.getSeconds();
			       		 String gm=(String)gmt.toString();
						 String ggm=gm.substring(1,2);
					     gval=Integer.parseInt(ggm);
					    fhour=gval+lhour;
			    						   if(lsec< forignlsec)  
			    			    			   
			    			    		   {
			    			    			  lsec = lsec + 60;
			    			    			   lmin =lmin -1;
			    			    			   
			    			    		   }
			    			    		   if(lmin< forignlmin)  
			    			    			   
			    			    		   {
			    			    			   lmin = lmin + 60;
			    			    			   fhour = fhour - 1;
			    			    		   }
			                              if(fhour< forignlhour)  
			    			    		   {	    			   
			    			    			   fhour = fhour +30;
			    			    		   }
			                              lsec = lsec - forignlsec;
			                              lmin =lmin - forignlmin;
			                              fhour =fhour-forignlhour;      
			    				     			       
			}	
			
		       catch (Exception e) 
		        {
			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
			   }
		       flocal.setHours(fhour);
		       flocal.setMinutes(lmin);
		       flocal.setSeconds(lsec);  
        	   return flocal;
	    }
			
			public void clear()
			{pos1="";pos2="";pos3="";pos4="";pos5=""; pos6="";
			pos7="";pos8=""; pos9=""; pos10=""; pos11="";pos12="";
			npos1="";npos2="";npos3="";npos4="";npos5=""; npos6="";
			npos7="";npos8=""; npos9=""; npos10=""; npos11="";npos12="";	 
			}
		   		
		public String getplanetPosition() throws SQLException, NamingException
		{     
			 clear();
			 setdefinition();
				//birth_date.setSeconds(birth_timesec); 
				Date dt=new Date();
				
				Date birth_date1= new Date(dt.toGMTString());
				Calendar cale = Calendar.getInstance();
				System.out.print("ddddddddddddaaaaaaaaaaaaaatttttttttttttttteeeeeeeee"+birth_date);
				cale.setTime(birth_date);
				/*cal.set(Calendar.HOUR, 00);
				cal.set(Calendar.MINUTE, 00);
				cal.set(Calendar.SECOND, 00);
				cal.set(Calendar.AM_PM, 1);*/
					//cal.set(Calendar.DATE, cal.get(Calendar.DATE)-1);
					//birth_timehour=birth_timehour-12;
				
				cale.set(Calendar.HOUR, birth_timehour);
				cale.set(Calendar.MINUTE, birth_timemin);
				cale.set(Calendar.SECOND, birth_timesec);
				 
				birth_date=cale.getTime();
			 
		int indtime=0;String gmt="";Integer gmt1=0;int bhour=0;int bmin=0; 
               int  bsec=0; 
			    kidsdatasource ds = new kidsdatasource();
		        st = ds.getConnection().createStatement();
			    rst = st.executeQuery("select * from location  where placeid ="+placeid);		
					if(rst.next())
						{
						indtime = rst.getInt(14);
						System.out.println("indtime   "+indtime );
				    	gmt = rst.getString(9);
 						}	
						rst.close();
						ds.closeCon();
						String gm=(String)gmt.toString();
						String ggm=gm.substring(1,2);
				        gmt1=Integer.parseInt(ggm);
				        if(indtime==1)
				        {System.out.println("indtime;;;;   "+indtime );
				        	 bhour  =  birth_date.getHours();
    			             bmin   =  birth_date.getMinutes(); 
    			             bsec   =  birth_date.getSeconds();
    			             bhour=bhour+gmt1+5;
    			            bmin =bmin+30;
    			            if( bmin>=60)
 			        	    {
 			        		 bhour =  bhour+( bmin/60);
 			        		 bmin =  bmin%60;
 			        	    }
 			        	   if(bhour >=24)
 			        	   { fcnt=1;
 			        	   bhour=bhour-24;
 			        	  System.out.println("indtime;;;ggg;   "+indtime );
 			        	   }
 			        	        	
				        }
			pos1="";pos2="";pos3="";pos4="";pos5=""; pos6="";
			pos7="";pos8=""; pos9=""; pos10=""; pos11="";pos12="";
			
			int ddeg3=0;int dmin3=0;
		    Float  value1=4f;
		    Float  value2=4f;
		    Float  value3=4f;
			Integer tempdeg;Integer tempmin;
			Integer day = birth_date.getDay();
			Integer month = birth_date.getMonth();
			Integer year = birth_date.getYear();
			Calendar cal = Calendar.getInstance();
			cal.setTime(birth_date);
			Date g = cal.getTime();
			java.sql.Date sqdate = new java.sql.Date(g.getTime());
			 week=cal.get(Calendar.DAY_OF_WEEK);
			cal.add(Calendar.DATE, 1);
			Date g2 = cal.getTime();
			java.sql.Date sqdate2 = new java.sql.Date(g2.getTime());
			cal.add(Calendar.DATE, 1);
			Date g3 = cal.getTime();
			java.sql.Date sqdate3 = new java.sql.Date(g3.getTime());
			int planetid=1;
			String planetname[]=new String[14];
			st = ds.getConnection().createStatement();
			rst = st.executeQuery("SELECT *  FROM weekprediction"+language+" where id="+week);
	    	 if(rst.next())
				{
	    		 weekname = rst.getString(2);
				}
	    	rst.close();						
	        rst = st.executeQuery("SELECT * FROM  planet"+language);
				while(rst.next())
					{
				    planetname[rst.getInt(2)]=rst.getString(3);
				   	}	
					rst.close();						
			ds.closeCon();
			while(planetid<=12)
			{
			if(fcnt==1)
			{   System.out.println("fcntfff  "+fcnt );
				ddeg1 = getplanetDegree(planetid,sqdate2);
			    dmin1 = getplanetMinute(planetid,sqdate2);
			    dsign1 = getplanetSign(planetid,sqdate2);
						
			    ddeg2 = getplanetDegree(planetid,sqdate3);
			    dmin2 = getplanetMinute(planetid,sqdate3);
			    dsign2 = getplanetSign(planetid,sqdate3);
			}
			else
			{System.out.println("fcnt   "+fcnt );
				ddeg1 = getplanetDegree(planetid,sqdate);
				dmin1 = getplanetMinute(planetid,sqdate);
				dsign1 = getplanetSign(planetid,sqdate);
							
				ddeg2 = getplanetDegree(planetid,sqdate2);
				dmin2 = getplanetMinute(planetid,sqdate2);
				dsign2 = getplanetSign(planetid,sqdate2);
			}
				System.out.println("d1  "+ddeg1);
				System.out.println("m1  "+dmin1);
				System.out.println("s1  "+dsign1);
				System.out.println("d2  "+ddeg2);
				System.out.println("m2  "+dmin2);
				System.out.println("s2  "+dsign2);
				
				if((ddeg1==ddeg2)&&(dmin1==dmin2)&&(dsign1==dsign2))
				{
						rdeg=ddeg1;
						rmin=dmin1;
					    rsign=dsign1;
				
				}
	else
	{         
				if(dsign2>dsign1)
				{
					
				
				if(dmin2<dmin1)
				{
					dmin2 = dmin2+60;
					ddeg2 = ddeg2-1;
				}
				if(ddeg2<ddeg1)
				{
					ddeg2 = ddeg2+30;
					
					
				}
					 ddeg3 = ddeg2-ddeg1;
					 dmin3 = dmin2-dmin1;
				}
				else if(dsign2<dsign1)
				{
					  if((dsign1==12)&&(dsign2==1))
			             {
				if(dmin2<dmin1)
				{
					dmin2 = dmin2+60;
					ddeg2 = ddeg2-1;
				}
				if(ddeg2<ddeg1)
				{
					ddeg2 = ddeg2+30;
					
					
				}
					 ddeg3 = ddeg2-ddeg1;
					 dmin3 = dmin2-dmin1; 
			    }
						
					  else
					  {
								
					if(dmin1<dmin2)
				{
					dmin1 = dmin1+60;
					ddeg1 = ddeg1-1;
				}
				if(ddeg1<ddeg2)
				{
					ddeg1 = ddeg1+30;
					
					
				}
					 ddeg3 = ddeg1-ddeg2;
					 dmin3 = dmin1-dmin2;
				}
				}
				else if(dsign1==dsign2)
				{
					
					
				   if(ddeg2>ddeg1)
				   {
						
						if(dmin2<dmin1)
						{
							dmin2 = dmin2+60;
							ddeg2 = ddeg2-1;
						}
						if(ddeg2<ddeg1)
						{
							ddeg2 = ddeg2+30;
							
							
						}
							 ddeg3 = ddeg2-ddeg1;
							 dmin3 = dmin2-dmin1;   
				   }
				   else if(ddeg2<ddeg1)
				   {
					   if(dmin1<dmin2)
						{
							dmin1 = dmin1+60;
							ddeg1 = ddeg1-1;
						}
						if(ddeg1<ddeg2)
						{
							ddeg1 = ddeg1+30;
							
							
						}
							 ddeg3 = ddeg1-ddeg2;
							 dmin3 = dmin1-dmin2;   
				   }
				   else if(ddeg2==ddeg1)
				   {
					  if(dmin1>dmin2)
					  {
						  dmin3=dmin1-dmin2;
						  ddeg3=ddeg1-ddeg2;
					  } 
					  else
					  {
						  dmin3=dmin2-dmin1;
						  ddeg3=ddeg2-ddeg1;  
					  }
				   }
				}
			    	 if(ddeg3>=24)
					 {
						
						 ddeg3=ddeg3-24; 
					 }
					 System.out.println("d3  "+ddeg3);
					 System.out.println("m3  "+dmin3);
					 value1=logarithm( ddeg3, dmin3); 
					
					if(indtime==1)
					{ value2=logarithm(bhour,bmin);
					 System.out.println("value2 "+value2+" "+bhour+" "+bmin);
					}
					else
					{
					 value2=logarithm(  birth_date.getHours(),birth_date.getMinutes()) ;//0.1498	
				    }
					 value3 =value1+value2;
					 System.out.println("value3 "+value3);
					//refer table x  for conversion of above value3 to deg min
					tempdeg= getlogarithmDegree(value3);
				    tempmin = getlogarithmMinute(value3);
				    rdeg = ddeg1+tempdeg;
				    rmin = dmin1+tempmin;
					if(rmin>= 60)
					{
						rdeg=rdeg+(rmin/60);
						rmin=(rmin%60);
				   	}
					 if(dsign2==dsign1)//for sign detection
					   {
						   rsign=dsign1;
					   }
					   else if(dsign2>dsign1)
					   {
						 if(rdeg>=30)
						 {rsign=dsign2;}
						 else
						  rsign=dsign1;	 
					   }
					   else if(dsign2<dsign1)
					   {
						   if((dsign1==12)&&(dsign2==1))
						   {
							   if(rdeg>=30)
								 {
									 rsign=1;}
								 else
								  rsign=12;	 
							   }
						   else
						   {
							   if(rdeg>=30)
								 {
									 rsign=dsign1+1;}
								 else
								  rsign=dsign1;	 
							   }
					   }
						   if(rdeg>= 30)
				   	   {
						rdeg = rdeg-30;
				   	   }
	  
	}		      
						  System.out.println("************"+planetid+" "+ rdeg+" "+rmin+" "+rsign);
						 
						 
						  setPosition(planetname[planetid],rdeg,rmin,rsign);		  
						  setnavaPosition(planetid,rdeg,rmin,rsign);
						  planetid++;
		}
			getMoonpos(12,rdeg,rmin,rsign);
			getLegnam();
			npos1="";npos2="";npos3="";npos4="";npos5=""; npos6="";
			npos7="";npos8=""; npos9=""; npos10=""; npos11="";npos12="";	 
			navacalc();
			dasa();
			thithi();
			numerology num=new numerology();
			num.birth_date=birth_date;
			num.language=this.language;
			num.prediction();
			birthnum=num.birthno;
			desno=num.destinyno;
			bpred=num.birthprediction;
			dpred=num.destinyprediction;
			return "predicten"; 
		}
		public void setdefinition()
		{
			
			dfn.language=this.language;
			dfn.setvalue();
			child=dfn.child;
			childstar=dfn.childstar;
		    gender=dfn.gender;
			mother=dfn.mother;
			father=dfn.father;
			youngerbrother=dfn.youngerbrother;
			elderbrother=dfn.elderbrother;
			youngersister=dfn.youngersister;
			eldersister=dfn.eldersister;
			dateofbirth=dfn.dateofbirth;
			timeofbirthchild=dfn.timeofbirthchild;
			birthday=dfn.birthday;
			placeofbirth=dfn.placeofbirth;
			grahanila=dfn.	grahanila;
			legnum=dfn.legnum;
			navashakam=dfn.navashakam;
			dasa=dfn.dasa;
			goodstone=dfn.goodstone;
			goodday=dfn.goodday;
			colour=dfn.colour;
			benefits=dfn.benefits;
			wealth=dfn.wealth;
			health=dfn.health;
			diet=dfn.diet;
			intelligence=dfn.intelligence;
			remedy=dfn.remedy;
			dealernumber=dfn.dealernumber;
			dealername=dfn.	dealername;
			job=dfn.job;
			education=dfn.education;
			character=dfn.character;
			lang=dfn.lang;
			name=dfn.name;
			music=dfn.music;
			popularity=dfn.popularity;
			goodnumber=dfn.goodnumber;
			 thiti=dfn.thiti;
			 karna= dfn.karna;
			 yog= dfn.yog;
			 legnamsign=dfn.legnamsign;
			 moonsignn=dfn.moonsignn;
			years=dfn.years;
			 months=dfn.months;
			days=dfn.days;
			ganam=dfn.ganam;
			yoni=dfn.yoni;
			tree=dfn.tree;
			bird=dfn.bird;
			animal=dfn.animal;
			devatha=dfn.devatha;
			bhootham=dfn.bhootham;
			krishnapaksa=dfn.krishnapaksa;
			suklapaksha=dfn.suklapaksha;
			return ;
	    }
		public void setPosition(String planetname,int rdeg,int rmin,int rsign)
		{System.out.flush();
		int d1=0;int d2=0;int d3=0;int d4=0;int d5=0;int d6=0;int d7=0;int d8=0;int d9=0;int d10=0;int d11=0;int d12=0;
		int m1=0;int m2=0;int m3=0;int m4=0;int m5=0;int m6=0;int m7=0;int m8=0;int m9=0;int m10=0;int m11=0;int m12=0;		
		switch (rsign)
		{
		case 1: pos1=pos1+"\n"+planetname+rdeg+"-"+rmin+"\n";
		        break;
		case 2: pos2=pos2+"\n"+planetname+rdeg+"-"+rmin+"\n";
		        System.out.println("!!!!!!!!!!!!!!!  "+rmin+rdeg+rsign);
                break;       	
               	
		case 3:pos3=pos3+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 4:pos4=pos4+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 5:pos5=pos5+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 6:pos6=pos6+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 7:pos7=pos7+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 8:pos8=pos8+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 9:pos9=pos9+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       break;
		case 10:pos10=pos10+"\n"+planetname+rdeg+"-"+rmin+"\n";
		        break;	
		case 11:pos11=pos11+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       	break;	
		case 12:pos12=pos12+"\n"+planetname+rdeg+"-"+rmin+"\n";
		       	break;	
    	default:break;
		}	}					  
		public void setnavaPosition(int pid,int rdeg,int rmin,int rsign)//for navamsa calculation
		{ 
		int d1=0;int d2=0;int d3=0;int d4=0;int d5=0;int d6=0;int d7=0;int d8=0;int d9=0;int d10=0;int d11=0;int d12=0;int d13=0;
		int m1=0;int m2=0;int m3=0;int m4=0;int m5=0;int m6=0;int m7=0;int m8=0;int m9=0;int m10=0;int m11=0;int m12=0;int m13=0;	
		if(pid==1)
		{
		         d1=rdeg;m1=rmin;//for navamsa calculation
		         n[1]=(float)(d1+((float)m1/100));
		         rsn[pid]=rsign;
		         System.out.println("calculated degree"+n[1]);	
		         System.out.println("moon sign"+rsn[pid]);	
		}
		else if(pid==2)
		{
               	
                d2=rdeg;m2=rmin;//for navamsa calculation
                n[2]=(float)(d2+((float)m2/100)); 
                rsn[pid]=rsign; 
                 System.out.println("calculated degree"+n[2]);	
		         System.out.println("sun  sign"+rsn[pid]);
		         
		}
		else if(pid==3)
		{
		        d3=rdeg;m3=rmin;
		        n[3]=(float)(d3+((float)m3/100));
		        rsn[pid]=rsign;
		         System.out.println("calculated degree"+n[3]);	
		         System.out.println("me sign"+rsn[pid]);	  
		}	        
		else if(pid==4)
		{
		       d4=rdeg;m4=rmin;
		       n[4]=(float)(d4+((float)m4/100));
		       rsn[pid]=rsign;
		      
		}
		else if(pid==5)
		{
		       d5=rdeg;m5=rmin;
		       n[5]=(float)(d5+((float)m5/100));
		       rsn[pid]=rsign;
		      
		}
		else if(pid==6)
		{
			
		       d6=rdeg;m6=rmin;
		       n[6]=(float)(d6+((float)m6/100));
		       rsn[pid]=rsign;
		     
		}
		else if(pid==7)
		{
		       d7=rdeg;m7=rmin;
		       n[7]=(float)(d7+((float)m7/100));
		       rsn[pid]=rsign;
		}    
		   	
		else if(pid==8)
		{
		       d8=rdeg;m8=rmin;
		       n[8]=(float)(d8+((float)m8/100));
		       rsn[pid]=rsign;
	    }	
		else if(pid==9)
		{
		       d9=rdeg;m9=rmin;
		       n[9]=(float)(d9+((float)m9/100));
		       rsn[pid]=rsign;
			}
		else if(pid==10)
		{
		        d10=rdeg;m10=rmin;
		        n[10]=(float)(d10+((float)m10/100)); 
		        rsn[pid]=rsign;
		       
		}
		else if(pid==11)
		{
		        d11=rdeg;m11=rmin;
		        n[11]=(float)(d11+((float)m11/100));
		        rsn[pid]=rsign;
		        
		}
		else if(pid==12)
		{
		         d12=rdeg;m12=rmin;
		         n[12]=(float)(d12+((float)m12/100));
		         rsn[pid]=rsign;
		       
		}
		         
		else if(pid==13)
		{
			 d13=rdeg;m13=rmin;
			 n[13]=(float)(d13+((float)m13/100));
			 rsn[pid]=rsign;
		}       
		}
			 
		public String navasqlValue()//table7(629)
        {  
		String q="";
        for(int i=1;i<=13;i++)
        {
        if((n[i]>0.0)&&(n[i]<=3.20))
           	val[i]=1;
        if((n[i]>3.20)&&(n[i]<=6.40))
        	val[i]=2;
        if((n[i]>6.40)&&(n[i]<=10.00))
        	val[i]=3;
        if((n[i]>10.00)&&(n[i]<=13.20))
        	val[i]=4;
        if((n[i]>13.20)&&(n[i]<=16.40))
        	val[i]=5;
        if((n[i]>16.40)&&(n[i]<=20.00))
        	val[i]=6;
        if((n[i]>20.00)&&(n[i]<=23.20))
        	val[i]=7;
        if((n[i]>23.20)&&(n[i]<=26.40))
        	val[i]=8;
        if((n[i]>26.40)&&(n[i]<=30.00))
        {
        	if((n[i]>=26.55)&&(n[i]<=26.56))
              {val[i]=8;}
        else
        	
        val[i]=9;
        }
        }
     	return "";
        }
  
			public  String navacalc() throws SQLException, NamingException
			{
			navasqlValue();
			String planetname[]=new String[14];
			kidsdatasource ds = new kidsdatasource();
			st = ds.getConnection().createStatement();
			 
				rst = st.executeQuery("SELECT * FROM  planet"+language);
				while(rst.next())
					{
				    planetname[rst.getInt(2)]=rst.getString(3);
				   	}	
					rst.close();						
			ds.closeCon();
			planetname[13]=getLagnamName();
				for(int i=1;i<=13;i++)
			{
				if((rsn[i]==1)||(rsn[i]==4)||(rsn[i]==7)||(rsn[i]==10))
				{
					val[i]=val[i]+rsn[i]-1;
				}
				else if((rsn[i]==2)||(rsn[i]==5)||(rsn[i]==8)||(rsn[i]==11))
				{
					val[i]=val[i]+rsn[i]+7;	
				}
				else if((rsn[i]==3)||(rsn[i]==6)||(rsn[i]==9)||(rsn[i]==12))
				{
					val[i]=val[i]+rsn[i]+3;
				}
				if(val[i]>12)
				{ 
					val[i]=val[i]-12;
					if(val[i]>12)
					{
						val[i]=val[i]-12;	
					}
				}
				Navaposition(planetname[i], val[i]);
			}
		  		   
				return "";
			}
						
			public void Navaposition(String planetname,int val)
			{
			switch (val)
			{
			case 1: npos1=npos1+"\n"+planetname+"\n";
			break;
			case 2:npos2=npos2+"\n"+planetname+"\n";
			break;
			case 3:npos3=npos3+"\n"+planetname+"\n";
			break;
			case 4:npos4=npos4+"\n"+planetname+"\n";
			break;
			case 5:npos5=npos5+"\n"+planetname+"\n";
			break;
			case 6:npos6=npos6+"\n"+planetname+"\n";
			break;
			case 7:npos7=npos7+"\n"+planetname+"\n";
			break;
			case 8:npos8=npos8+"\n"+planetname+"\n";
			break;
			case 9:npos9=npos9+"\n"+planetname+"\n";
			break;
			case 10:npos10=npos10+"\n"+planetname+"\n";
			break;	
			case 11:npos11=npos11+"\n"+planetname+"\n";
			break;	
			case 12:npos12=npos12+"\n"+planetname+"\n";
			break;	

			default:
			break;
			}
			  }					  
				
		public Float logarithm(int d,int m)
		{
			Float value=0f;
			              FacesContext fc =  FacesContext.getCurrentInstance();
                         kidsdatasource ds = new kidsdatasource();
    		
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    				rst = st.executeQuery("select value from logtable where degree ="+d+" and minute="+m);
    					if(rst.next())
    						{
    						 value	 = rst.getFloat(1);
    						 
     						}	
    						rst.close();						
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    		    	   
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		       return value;
			
		}
		 public static float Round(double Rval, int Rpl) {
			  float p = (float)Math.pow(10,Rpl);
			  Rval = Rval * p;
			  float tmp = Math.round(Rval);
			  return (float)tmp/p;
			  }
		
		public int getlogarithmDegree(Float v)
		{       	  Float rval=0.0000f;
			Float rval1=0.0000f;
			int a=0;int c=0;int d=0;
			
			
			FacesContext fc =  FacesContext.getCurrentInstance();
            kidsdatasource ds = new kidsdatasource();
    		
    		try 
    		{
    			 v= Round(v,4);
    			    st = ds.getConnection().createStatement();
    			    rst = st.executeQuery("SELECT *  FROM logtable where value >"+v+" order by value  asc  LIMIT 1");
    					if(rst.next())
    						{
    						 a	 = rst.getInt(1);
    						 rval=rst.getFloat(3);
     						}
    					  	rst.close();	
    						  rst = st.executeQuery("SELECT *  FROM logtable where value <"+v+" order by value  desc  LIMIT 1");
    	    					if(rst.next())
    	    						{
    	    						 c	 = rst.getInt(1);
    	    						 rval1=rst.getFloat(3);
    	     						}
    	    					rst.close();
    	    					 String rval2=(String)rval.toString();
    	    					 String rval22=(String)rval1.toString();
    	    					 int rv2=rval2.length();
    	    					 int rv22=rval22.length();
    	    					  if(rv2<=5)
    	    					
    	    					 {
    	    						 rval2=rval2+"0";
    	    						 rv2=rval2.length();
    	    					 }
    	    					  if(rv2<=5)
    	    	    					
     	    					 {
     	    						 rval2=rval2+"0";
     	    						 rv2=rval2.length();
     	    					 }
    	    					  if(rv22<=5)
    	    	    					
     	    					 {
     	    						 rval22=rval22+"0";
     	    						 rv22=rval22.length();
     	    					 }
     	    					  if(rv22<=5)
     	    	    					
      	    					 {
      	    						 rval22=rval22+"0";
      	    						 rv22=rval22.length();
      	    					 }
     	    				    String rva10="";
     	    					String rva100="";
      	    		        	rva10=rval2.substring(0,6);
      	    		        	rva100=rval22.substring(0,6);
      	    		        	Float fs1 = new Float(rva10);
     	    		        	Float fs2 = new Float(rva100);
     	    		        	double ds1 = fs1.doubleValue();
      	    		        	double ds2 = fs2.doubleValue();
     	    		        	double hval=(Round((ds1-v),4));
        						double sval=(Round((v-ds2),4));
    							if(hval<sval)
    						{
    						 d=a;
    						}
    						else if(hval>sval)
    						{
    						 d=c;
    						}
    						else if(sval==hval)
    						{
    						 d=c;	
    						}
    						
    						ds.closeCon();
    			}	
    		      catch (Exception e) 
    		        {
    		    	   
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		       System.out.print("log degree"+" "+d+"\n");     
			return d;
		}
		public int getlogarithmMinute(Float v)
		{
			Float rval=0.0000f;
			Float rval1=0.0000f;
			int a=0;int c=0;int m=0;
			
			FacesContext fc =  FacesContext.getCurrentInstance();
            kidsdatasource ds = new kidsdatasource();
    		
    		try 
    		{			 v= Round(v,4);
        			    st = ds.getConnection().createStatement();
        			    rst = st.executeQuery("SELECT *  FROM logtable where value >"+v+" order by value  asc  LIMIT 1");
        					if(rst.next())
        						{
        						 a	 = rst.getInt(2);
        						 rval=rst.getFloat(3);
         						}	
        						rst.close();	
        						
        		    			   rst = st.executeQuery("SELECT *  FROM logtable where value <"+v+" order by value  desc  LIMIT 1");
        	    					if(rst.next())
        	    						{
        	    						 c	 = rst.getInt(2);
        	    						 rval1=rst.getFloat(3);
        	     						}
        	    					rst.close();
        	    					 String rval2=(String)rval.toString();
        	    					 String rval22=(String)rval1.toString();
        	    					 int rv2=rval2.length();
        	    					 int rv22=rval22.length();
        	    					  if(rv2<=5)
        	    					
        	    					 {
        	    						 rval2=rval2+"0";
        	    						 rv2=rval2.length();
        	    					 }
        	    					  if(rv2<=5)
        	    	    					
         	    					 {
         	    						 rval2=rval2+"0";
         	    						 rv2=rval2.length();
         	    				     }
        	    					  if(rv22<=5)
        	    	    					
         	    					 {
         	    						 rval22=rval22+"0";
         	    						 rv22=rval22.length();
         	    					 }
         	    					  if(rv22<=5)
         	    	    					
          	    					 {
          	    						 rval22=rval22+"0";
          	    						 rv22=rval22.length();
          	    					 }
         	    					String rva10="";
         	    					String rva100="";
          	    		        	rva10=rval2.substring(0,6);
          	    		        	rva100=rval22.substring(0,6);
          	    		        	Float fs1 = new Float(rva10);
         	    		        	Float fs2 = new Float(rva100);
         	    		        	double ds1 = fs1.doubleValue();
          	    		        	double ds2 = fs2.doubleValue();
         	    		        	double hval=(Round((rval-v),4));
            						double  sval=(Round((v-rval1),4));
        							if(hval<sval)
        						{
        						 m=a;
        						}
        						else if(hval>sval)
        						{
        						 m=c;
        						}
        						else if(sval==hval)
        						{
        						 m=c;	
        						}
        						
        						ds.closeCon();
        			}	
        			
        		       catch (Exception e) 
        		        {
        		    	   
        			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
        			   }
        		       System.out.print("log minute"+" "+m);
    			return m;
    		
		}
		 public String dasa()
			{	int samplemin=0;int sampledeg=0;int tlen=0;
				Float mdeg=(float)(moon_deg);
	        	Float mmin=(float)(moon_min);
	        	System.out.print(" moontimesssssss  "+mmin );
	        	int tdeg1=0;int tdeg2=0;int tmin1=0;int tmin2=0;
	        	Float moontime = (float)( (float)mdeg+(float)(mmin/100));
	        	int Tdeg=0;int Tmin=0;String dasaplanet="";
	        	System.out.print(" moontimesssssss  "+moontime );
				int starid=star;
				System.out.print("starid  "+starid);
				int dasaid=(starid%9);
				if(dasaid==0)
			    dasaid=9;
				 System.out.print("dasaid "+dasaid);
				Float time1=00.00f;
				Float time2=00.00f;
				int year1=0;int month1=0;int day1=0;
				int year2=0;int month2=0;int day2=0;
				int year=0;int month=0;int day=0;Float T=00.00f;
				FacesContext fc =  FacesContext.getCurrentInstance();
	            kidsdatasource ds = new kidsdatasource();
	    		int bal_day;int bal_month;    	
	    		try 
	    		{
	    			st = ds.getConnection().createStatement();
	    			rst = st.executeQuery("SELECT *  FROM ragam where dasaid="+dasaid);
			    	 if(rst.next())
						{
			    		 ragam = rst.getString(language+2);
			    		 System.out.print(" OOOOOOOOOOOOOOOOOOOOO  "+ragam);
						}
			    	rst.close();					
	    			
	    			
	    			rst = st.executeQuery("SELECT *  FROM dasa where dasaid="+dasaid);
 					if(rst.next())
 						{ 
 						dasaplanet= rst.getString(language+2);
 						
  						}	
 					  	rst.close();	
 						if((mmin==0.0)||(mmin==20.0)||(mmin==40.0)||(mmin==0))
 						{
 						rst = st.executeQuery("SELECT *  FROM dasatime where dasaid="+dasaid+" and time <"+moontime+" order by time  desc  LIMIT 1");
 		        		if(rst.next())
 		        		{ 
 		        		year1	 = rst.getInt(3);
 		        		month1	 = rst.getInt(4);
 		        		day1	 = rst.getInt(5);
 		        		time1=rst.getFloat(2);
 		        		}	
 		        		rst.close();		
 						}
	    		        else
	    		        {
	        			rst = st.executeQuery("SELECT *  FROM dasatime where dasaid="+dasaid+" and time >"+moontime+" order by time  asc  LIMIT 1");
	        			if(rst.next())
	        			{ 
	        			year1	 = rst.getInt(3);
	        			month1	 = rst.getInt(4);
	        			day1	 = rst.getInt(5);
	        			time1=rst.getFloat(2);
	        			System.out.print("kkkkkkknnnnn"+year1+month1+day1);			
	         			}	
	        			rst.close();	
	        		    rst = st.executeQuery("SELECT *  FROM dasatime where dasaid="+dasaid+" and time <"+moontime+" order by time  desc  LIMIT 1");
	       				if(rst.next())
	        	    	{
	        	    	year2	 = rst.getInt(3);
	        	    	month2	 = rst.getInt(4);
	        	    	day2	 = rst.getInt(5);
	        	    	time2=rst.getFloat(2);
	        	    				
	        	     	}
	        	        rst.close();
 						}
 						
 					
	        	    	String t1=(String)time1.toString();
	        	    	String t2=(String)time2.toString();
		        		int tlen1=t1.length();
		        		int tlen2=t2.length();
		        		if(tlen1<=4)
		        		{ if(t1.charAt(2)=='.')
		        		 {
		        		  t1=t1+"0";
		        		  tlen1=t1.length();
		        		 }
		        		 else 
		        		 {
		        		 t1="0"+t1;
		        		 tlen1=t1.length();
		        		 }
		        	    if(tlen1<=4)
		        		 {
		        	    t1=t1+"0";
		        		tlen1=t1.length();
		        		 }
		        	   }
		        	   if(tlen2<=4)
		        		{ if(t2.charAt(2)=='.')
		        		 {
		        		 t2=t2+"0";
		        		 tlen2=t2.length();
		        		 }
		        		else 
		        		{
		        		t2="0"+t2;
		        		tlen2=t2.length();
		        	    }
		        	  if(tlen2<=4)
		        	   {
		        	   t2=t2+"0";
		        	   tlen2=t2.length();
		        	   }
		             }
		    		String td1=t1.substring(0,2);
		           	String tm1=t1.substring(3,5);
		            tdeg1=Integer.parseInt(td1);
		            tmin1=Integer.parseInt(tm1);
	        	    String td2=t2.substring(0,2);
		        	String tm2=t2.substring(3,5);
		        	tdeg2=Integer.parseInt(td2);
		        	tmin2=Integer.parseInt(tm2);
		        	int Td1=tdeg1;int Td2=tdeg2;
		        	int Tm1=tmin1;int Tm2=tmin2;
		        	if(tmin1< moon_min)  
	        	   {
		        	tmin1 = tmin1+ 60;
	        	    tdeg1= tdeg1 -1;
	        	   }
	               if(tdeg1<moon_deg)  
	        	   {
	        	   tdeg1= tdeg1 + 30;
	        	   } 
	        	  int hmin1=tmin1-moon_min;
		          int hdeg1=tdeg1-moon_deg;
	        	  if(moon_min< tmin2)  
	              {
	               moon_min = moon_min+ 60;
	               moon_deg= moon_deg -1;
	              }
	              if(moon_deg< tdeg2)  
	             {
	          	   moon_deg= moon_deg + 30;
	             } 
	        	 int hmin2=moon_min-tmin2;
		         int hdeg2=moon_deg-tdeg2;
	        	 if(hdeg1==hdeg2)
	        	{
	        	if(hmin1<hmin2)
	        	{System.out.print("kkkkkkknnnnn");
	        	year	 = year1;
	           	month	 = month1;
	           	day	 = day1;
	           	Tdeg=Td1;
	          	Tmin=Tm1;
	           	T=time1;
	           	}
	        	else if(hmin1>hmin2)
	            {
	        	System.out.print("uuuuuuunnnnnn");
	        	year	 = year2;
	            month	 = month2;
	            day	 = day2;
	            Tdeg=Td2;
	            Tmin=Tm2;
	            T=time2;
	          	}
	        	else if(hmin1==hmin2)
	        	{
	        	System.out.print("gvgggnnn");
	        	year	 = year2;
	            month	 = month2;
	            day	 = day2;
	            Tdeg=Td2;
	            Tmin=Tm2;
	        	T=time2;
	         	}
	        	}
	        	else if(hdeg1<hdeg2)
	        	{
	        	year	 = year1;
	          	month	 = month1;
	            day	 = day1;
	           	Tdeg=Td1;
	           	Tmin=Tm1;
	           	T=time1;
	          	}
	        	else if(hdeg1>hdeg2)
	        	{year	 = year2;
            	month	 = month2;
            	day	 = day2;
            	Tdeg=Td2;
            	Tmin=Tm2;
            	T=time2;            					
            	}
	        	   						
	        	if(moontime>T)
	        	{ 
	        	if(moon_min< Tmin)  
	        	{
	        	 moon_min = moon_min+ 60;
	        	 moon_deg= moon_deg -1;
	        	}
	            if(moon_deg< Tdeg)  
	           {
	           moon_deg= moon_deg + 30;
	           } 
	          samplemin=moon_min-Tmin;
	          sampledeg=moon_deg-Tdeg;
	          bal_day= dasaDaysql(samplemin,dasaid);
	          bal_month= dasaMonthsql(samplemin,dasaid);
	          System.out.print("bal_day "+" "+bal_day);
	          System.out.print("bal_month "+" "+bal_month);
	          if(day<bal_day)
		       	 {
		       	 day=day+30;
		      	 month=month-1;
		      	 }
		        if(month<bal_month)
		        {
		       	 month=month+12;
		         year=year-1;
		        }
		       day=day-bal_day;
		       month=month-bal_month;
	          if(day>31)
	          {
	          month=month+(day /31);	
	          day=day %31;
	          }
	       	if(month==12)
	       	{ year=year+1;	
	       	   month=0;
	       	} 
	          System.out.print("1day "+" "+day);
	         }
	         else if(moontime<T)
	         { System.out.print("nnnnnnnnnnnnnnnn"+Tmin);
	           if(Tmin<moon_min)  
	 		   {System.out.print("ttttttttttttttttttt ="+T);
  	        	Tmin = Tmin+ 60;
	        	Tdeg=Tdeg -1;
	 	     }
	 		 if(Tdeg< moon_deg)  
	 		 {
	 		  Tdeg= Tdeg + 30;
	 		 } 
	 		samplemin=Tmin-moon_min;
	        sampledeg=Tdeg-moon_deg;
	        bal_day= dasaDaysql(samplemin,dasaid);
	        bal_month= dasaMonthsql(samplemin,dasaid);
	        System.out.print("bal_day "+" "+bal_day);
	        System.out.print("bal_month "+" "+bal_month);
	      
	       day=bal_day+day;
	       month=bal_month+month;
	       if(day>31)
	       {
	       	month=month+(day /31);	
	       	day=day %31;
	       }
	    	if(month==12)
	       	{ year=year+1;	
	       	   month=0;
	       	} 
	     System.out.print("2dayy "+" "+day);
	      }
	     else if(moontime==T)
	     {  rst = st.executeQuery("SELECT *  FROM dasatime where dasaid="+dasaid+" and time ="+moontime);
	        if(rst.next())
	        { 
	      	year	 = rst.getInt(3);
	      	month	 = rst.getInt(4);
	      	day	 = rst.getInt(5);
	      	T=rst.getFloat(2);
	        }	
	        rst.close();	
	      	samplemin=0;
	        bal_day= 0;
	        bal_month= 0;
	        System.out.print("sampledeg "+" "+sampledeg);
	        day=bal_day+day;
	        month=bal_month+month;
	       	if(day>31)
	       	{
	       	month=month+(day /31);	
	      	day=day %31;
	       	}
	       	if(month==12)
	       	{ year=year+1;	
	       	   month=0;
	       	}
	    	System.out.print("mon  "+" "+month);
	        }			
	       ds.closeCon();
	       fdasa=dasaplanet+" "+year+"year"+""+month+"month"+" "+day+"day";
	       System.out.print(fdasa);
	      	}	
	      catch (Exception e) 
	      {
	         fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
	      }
	         return "";
	    		
			}
			public int dasaMonthsql(int m,int d)
			{  
				int value=0;
				int value1=0;int min1=0;int value2=0;int min2=0;
				FacesContext fc =  FacesContext.getCurrentInstance();
	            kidsdatasource ds = new kidsdatasource();
	    		try 
	    		{
	    		  st = ds.getConnection().createStatement();
	    		  if((m<=10)||(m==15)||(m==20))  
	    		  {
	    		   rst = st.executeQuery("select * from dasamin where minute ="+m+" and dasaid="+d);
	 			   if(rst.next())
				   {
				   value	 = rst.getInt(4);
				   }	
	 			   else
	    		   {  System.out.print("ZZZZZZZZZZZZZZ"+" "+m);  
	    			  rst = st.executeQuery("select * from dasamin where minute >"+m+" and dasaid="+d+" order by minute  asc  LIMIT 1");
	    			  if(rst.next())
	    			 {
	    			 value1	 = rst.getInt(4);
	    			 min1=rst.getInt(3);
	     			}	
	    			 rst.close();
	    			 rst = st.executeQuery("select * from dasamin where minute <"+m+" and dasaid="+d+" order by minute  desc  LIMIT 1");
	        		 if(rst.next())
	        		{
	        		value2	 = rst.getInt(4);
	        		min2=rst.getInt(3);
	         		}	
	        		rst.close();
	   			    int hval=min1-m;
	                int  sval=m-min2;
	        		if(hval<sval)
	        		{
	        		value=value1;
	        		}
	        	   else if(hval>sval)
	        		{
	        		value=value2;
	        		}
	        	  else if(sval==hval)
	        	   {
	        		value=value2;	
	        	   }
	        	  }
	    			   
				  rst.close();
	    		  }
	    		 ds.closeCon();
	    	      }	
	    	     catch (Exception e) 
	    	     {
	    	      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
	    	     }
	    	     System.out.print("monthvalue"+" "+value);
	    	     return value;
			     }
			     public int dasaDaysql(int m,int d)
			     {
			     int value=0;int value1=0;int min1=0;int value2=0;int min2=0;
				 FacesContext fc =  FacesContext.getCurrentInstance();
	             kidsdatasource ds = new kidsdatasource();
	    		 try 
	    		 {
	    			     st = ds.getConnection().createStatement();
	    			     if((m<=10)||(m==15)||(m==20)) 

	    			     {
	    			    	 rst = st.executeQuery("select * from dasamin where minute ="+m+" and dasaid="+d);
	 					if(rst.next())
						{
						 value	 = rst.getInt(5);
						
							}	
						rst.close();			
	    			     }		 
	    			    	 
	    			    	 
	    			     else	 
	    			     { System.out.print("jjjjjjjjjjj"+" "+m);  
	    				rst = st.executeQuery("select * from dasamin where minute >"+m+" and dasaid="+d+" order by minute  asc  LIMIT 1");
	    					if(rst.next())
	    						{
	    						 value1	 = rst.getInt(5);
	    						 min1=rst.getInt(3);
	     						}	
	    						rst.close();
	    						rst = st.executeQuery("select * from dasamin where minute <"+m+" and dasaid="+d+" order by minute desc  LIMIT 1");
	        					if(rst.next())
	        						{
	        						 value2	 = rst.getInt(5);
	        						 min2=rst.getInt(3);
	         						}	
	        						rst.close();
	   						

	            	    			
	        					int hval=min1-m;
	            					int  sval=m-min2;
	        						if(hval<sval)
	        						{
	        							value=value1;
	        						}
	        						else if(hval>sval)
	        						{
	        							value=value2;
	        						}
	        						else if(sval==hval)
	        						{
	        							value=value2;	
	        						}
	    		}
	        				 
	    			 			ds.closeCon();
	    	        			}	
	    	        			
	    	        		       catch (Exception e) 
	    	        		        {
	    	        		    	   
	    	        			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
	    	        			   }
	    	        		       System.out.print("dayvalue"+" "+value);
	    	    			return value;
	    	    		
	    			}
			
			public String  thithi()
			{Float m;Float s;int mdeg=0;int sdeg=0;int mmin;int smin ;int msign=0;int ssign=0;
			  int moondegree=0; int sundegree=0;int deg=0;int min=0;int value=0;
			  int yogamoondegree=0; int yogasundegree=0;
			  String t="";String tt="";			    
			  msign=rsn[12];
			   ssign=rsn[1];
			    m=n[12];
			    String m1=m.toString();
			    int mlen=m1.length();
				 if(mlen<=4)
				 { if( m1.charAt(2)=='.')
				 {
					 m1=m1+"0";
					 mlen=m1.length();
				 }
				 else 
				 {
					m1="0"+m1;
					 mlen=m1.length();
				 }
				  if(mlen<=4)
				 {
					 m1=m1+"0";
					 mlen=m1.length();
				 }
					 }
			     s=n[1];
			    String s1=s.toString();
			   int slen=s1.length();
				 if(slen<=4)
				 { if( s1.charAt(2)=='.')
				 {
					 s1=s1+"0";
					slen=s1.length();
				 }
				 else 
				 {
					s1="0"+s1;
					slen=s1.length();
				 }
				  if(slen<=4)
				 {
					 s1=s1+"0";
					slen=s1.length();
				 }
					 }
					String md=m1.substring(0,2);
		        	String mm=m1.substring(3,5);
		        	String sd=s1.substring(0,2);
		        	String sm=s1.substring(3,5);
		        	mdeg=Integer.parseInt(md);
			        mmin=Integer.parseInt(mm);
			       	sdeg=Integer.parseInt(sd);
			       	smin=Integer.parseInt(sm);	
			       
		        moondegree=(msign*30)+mdeg;
		        sundegree=(ssign*30)+sdeg;
		        yogamoondegree=((msign-1)*30)+mdeg;//for yoga calculation
		        yogasundegree=((ssign-1)*30)+sdeg;
		        karana=karanacalc(moondegree,mmin,sundegree,smin);
		        yoga=yogacalc(yogamoondegree,mmin,yogasundegree,smin);	
		        if(mmin<smin)
		         {
		        	mmin=min+60;
		        	moondegree=moondegree-1;
		         }
		      
		        if(moondegree<sundegree)
				{
		        	moondegree=moondegree+360;
				}	
		        deg=moondegree-sundegree;
		        min=mmin-smin;
		        value=((deg*60)+min)/720;
		        System.out.println("thiyhidegree"+deg);
		        System.out.println("thithimin"+min);
		        System.out.println("value"+value);
		        value=value+1;
		        System.out.println("value+1..."+value);
		        if(value>30)
		        {
		        	while(value>30)
		        	{	
		        		value=value-30;
		        	}
		        	
		          }
		    	kidsdatasource ds = new kidsdatasource();
		    	FacesContext fc = FacesContext.getCurrentInstance();
		    	try 
		    {
		        st = ds.getConnection().createStatement();
		    	rst = st.executeQuery("select * from thithi where num ="+value);
		       	if(rst.next())
				{
					t = rst.getString(language+3);
					int x=rst.getInt(2);
					
					if(x<15)
						tt=dfn.suklapaksha;
					else if(x>15)
						tt=dfn.krishnapaksa;
					else if(x==15)
						tt="(Full moon)";
					else if(x==30)
						tt="";
					thithi=t+","+tt;
				}	
				rst.close();						
		        ds.closeCon();
	}	
	
       catch (Exception e) 
        {
	      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
	   }
    
       return "";
 
}
			public String karanacalc(int md,int mm,int sd,int sm)
			{ 	String k="";
			  if(mm<sm)
		         {
		        	mm=mm+60;
		        	md=md-1;
		         }
		      
		        if(md<sd)
				{
		        	md=md+360;
				}	
			int karanadeg=md-sd;
			int karanadegree=karanadeg*60;
			int karanamin=mm-sm;
			int res=(karanadegree+karanamin)/360;
			System.out.print("karanadegree"+" "+karanadegree);
			System.out.print("karanamin"+" "+karanamin);
			System.out.print("karanavalue"+" "+res);
			if(res>60)
		    {
		    	while(res>60)
		    	{	
		    	res=res-60;
		    	}
		    	
		      }
		    if((res==1)||(res==8)||(res==15)||(res==22)||(res==29)||(res==36)||(res==43)||(res==50))
		    k="Bhava";	
		    if((res==2)||(res==9)||(res==16)||(res==23)||(res==30)||(res==37)||(res==44)||(res==51))
		    k="Balava";	
		    if((res==3)||(res==10)||(res==17)||(res==24)||(res==31)||(res==38)||(res==45)||(res==52))
		    k="Kaulava";	
		    if((res==4)||(res==11)||(res==18)||(res==25)||(res==32)||(res==39)||(res==46)||(res==53))
		    k="Taitila";	
		    if((res==5)||(res==12)||(res==19)||(res==26)||(res==33)||(res==40)||(res==47)||(res==54))
		    k="Gara";	
		    if((res==6)||(res==13)||(res==20)||(res==27)||(res==34)||(res==41)||(res==48)||(res==55))
		    k="vanija";	
		    if((res==7)||(res==14)||(res==21)||(res==28)||(res==35)||(res==42)||(res==49)||(res==56))
		    k="Vishti";	
		    if(res==57)
		    k="Shakuni";
		    if(res==58)
		   	k="Chatushpada";	
		    if(res==59)
		    k="Naga";
		    if((res==60)||(res==0))
		    k="Kimstugana";	
			return k;

			}
		    				
	public String yogacalc(int md,int mm,int sd,int sm)
	{ 	String y="";	
	int yogadeg=md+sd;
	int yogadegree=yogadeg*60;
	int yogamin=mm+sm;
	int res=(yogadegree+yogamin)/800;
    if(res==27)
        res=1;
    else if(res<27)
    res=res+1;
    else if(res>27)
    {
    	while(res>27)
    	{	
    	res=res-27;
    	}
    	res=res+1;
      }
	kidsdatasource ds = new kidsdatasource();
	FacesContext fc = FacesContext.getCurrentInstance();
	try 
{ 
    st = ds.getConnection().createStatement();
	rst = st.executeQuery("select * from yoga where num ="+res);
   	if(rst.next())
	{
		y = rst.getString(3);
		
		   System.out.println("y"+yoga);							
	}	
	rst.close();						
    ds.closeCon();
}	

catch (Exception e) 
{
fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
}

return y;

	}
    		
			
		public String getMoonpos(int x,int rdeg,int rmin,int rsign)
		{          moon_deg=rdeg;
				   moon_min=rmin;
				   moon_sign=rsign;
			 System.out.println("************"+12+" "+ rdeg+" "+rmin+" "+rsign);
			  setnavaPosition( 12,rdeg,rmin,rsign);
			   sunsignMoon=sunsignName( rsign);
			   graha="Grahanila";
			   navamsaka="Navashakam";
			   String starname  =starName(star);
			   starname1=graha+" "+starname;
			   starnam=starname;
			   parentname="Welcome"+" "+sunsignMoon+" kid to this wonder world";
			   welcome=sunsignMoon+" "+child+" "+" of Mrs. and Mr. ";
			return "";
		}
		
		public String getLagnamName()
		{   String LagnamName="";
			kidsdatasource ds = new kidsdatasource();
			try {
				st = ds.getConnection().createStatement();
				rst = st.executeQuery("SELECT * FROM  planet"+language+" where planetid=13");
			
			while(rst.next())
					{
				LagnamName=rst.getString(3);
				    
					}	
					rst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (NamingException e) {
				e.printStackTrace();
			}
			ds.closeCon();
			return LagnamName;
		}
	 
		
		public int getStar()
		{   double res; 
		    double calc;String devatha="";
			String gana ="";String sex ="";	String animal="";String bhooth ="";
			String bird = "";String tree ="";
		      Float f=((float)(rmin )/ 100 );
		      System.out.println("mmm"+f);
	         res = (rdeg +f);//floating value of moon position
	         System.out.println("moon position"+res);
		          	
	      	kidsdatasource ds = new kidsdatasource();
	    	FacesContext fc = FacesContext.getCurrentInstance();
	    	try 
	    {
	        st = ds.getConnection().createStatement();
	        rst = st.executeQuery("select * from star where sunsign_id ="+rsign);
	       
	                             double temp1 = 0.00;
	    						while(rst.next())
	    							
	    						{
	    					
	    						
	    									   if((res<= (temp1+ rst.getFloat(4)))&&(res> temp1))
	    									   {
	    										   System.out.println("/////"+rst.getFloat(4));
	    										   star = rst.getInt(3);
	    										   break;
	    									   }
	    									  
	    									  temp1 = temp1+ rst.getFloat(4);  
	  	    						  }
	    	 
	    				rst.close();
	    				 rst = st.executeQuery("select * from stargana"+language+" where starid ="+star);
	    				if(rst.next())
	    				{
	    				devatha = rst.getString(2);
	    				gana = rst.getString(3);
	    				sex = rst.getString(4);
	    			    animal= rst.getString(5);
	    			    bhooth = rst.getString(6);
	    				bird = rst.getString(7);
	    				tree = rst.getString(8);
	    				 System.out.println(")))+++++++++++/////"+tree);
	    				}
	    				stardetails1=gana+","+devatha+","+tree;
	    				stardetails2=sex+", "+bhooth+", "+animal+" ,"+bird;
	    				rst.close(); 
	    				ds.closeCon();
	    			}	
	    			
	    		       catch (Exception e) 
	    		        {
	    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
	    			   }

	        	return star;
	        
		}			
			
		public String starName(int s)
		{   s=getStar();
		    System.out.println("starid"+s);
			String ss="";
			FacesContext fc =  FacesContext.getCurrentInstance();
            kidsdatasource ds = new kidsdatasource();
    		
    		try 
    		{
    		 
    			st = ds.getConnection().createStatement();
    			rst = st.executeQuery("select starname from star"+language+" where starid="+s);
    				if(rst.next())
    						{
    						ss	 = rst.getString(1);
    						System.out.println(ss+"  starname");
     						}	
    						rst.close();						
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      System.out.println( e.getMessage()+"error avctuallly" );
    			   }
    		       return ss;
			
		}
		
		public String sunsignName(int s)
		{
			
			String ss="";
		    FacesContext fc =  FacesContext.getCurrentInstance();
            kidsdatasource ds = new kidsdatasource();
    		
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    				rst = st.executeQuery("select * from sunsigntable where sunsign_id="+s);
    					if(rst.next())
    						{
    						ss	 = rst.getString(language+2);
     						}	
    						rst.close();						
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		       return ss;
			
		}
	       public Integer getlongitudeHour(int placeid)//table7(629)
        {
        	Integer longihour = 0;
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc = FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    				rst = st.executeQuery("select * from location where placeid ="+placeid+"");
    				
    						if(rst.next())
    						{
    							longihour = rst.getInt(6);
    							
    							
    						}	
    						rst.close();						
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		    
        	return longihour;
        }
        public Integer getLongitudeMin(int placeid)//table7(629)
        {
        	Integer longimin = 0;
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc = FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    				rst = st.executeQuery("select * from location where placeid ="+placeid+"");
    				
    						if(rst.next())
    						{
    							longimin = rst.getInt(7);
    							
    							
    						}	
    						rst.close();					
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		    
    		       return longimin;
        	 
        }
        public String getLongitudeSign(int placeid)//table7(629)
        {
        	String longisign = "";
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc = FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    				rst = st.executeQuery("select * from location where placeid ="+placeid+"");
    				
    						if(rst.next())
    						{
    							longisign = rst.getString(8);
    							
    							
    						}	
    						rst.close();					
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		    
    		       return longisign;
        	 
        }
        public boolean isEast(int placeid)//table7(629)
        {
        	boolean longiStatus = false;
        	kidsdatasource ds = new kidsdatasource();
    		FacesContext fc =  FacesContext.getCurrentInstance();
    		try 
    		{
    			     st = ds.getConnection().createStatement();
    				rst = st.executeQuery("select * from location where placeid ="+placeid+"");
    						if(rst.next())
    						{
    							 if(rst.getString(8).equals("E"))
    									 {
    								 longiStatus = true;
    									 }
    							
    							
    						}	
    						rst.close();						
    				ds.closeCon();
    			}	
    			
    		       catch (Exception e) 
    		        {
    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
    			   }
    		    
        	return longiStatus;
        }
        public String gotoadminloginpage()
    	{
    	return "admin";
    	}
        public String getlTime()
        {
        	birth_date1 = getlocalTime();
        	return"";
        }
        
        
      
        public Date getlocalTime()//
        {   
        	FacesContext fc= FacesContext.getCurrentInstance();
        	System.out.flush();
        	int  birth_timehour  =  birth_date.getHours();
            int  birth_timemin   =  birth_date.getMinutes(); 
            int  birth_timesec   =  birth_date.getSeconds();
            System.out.println("birth_timehour"+birth_timehour);
            System.out.println( "birth_timemin"+birth_timemin );
        	if(istmin<getLongitudeMin(placeid))
        	{
              istmin =  istmin+60;
        	  isthour = isthour-1;
        	}
            if(isthour<getlongitudeHour(placeid))
        	{
            	isthour = isthour+30;
        	}
            //System.out.println(placeid);
           // System.out.println( istmin );
              System.out.println( "isthour"+isthour);
            	int localtimemin = istmin-getLongitudeMin(placeid);
        	   int localtimehour = isthour-getlongitudeHour(placeid);
        	   //four minute per degree calculation
        	   System.out.println(localtimemin); 
        	   System.out.println(localtimehour); 
        	      
        	   int localtimesec = localtimemin*4;
        	   localtimemin = localtimehour*4;
        	   localtimehour=0;
        	   if(localtimesec >=60)
        	   {
        		 localtimemin = localtimemin+(localtimesec/60);
        		 localtimesec = localtimesec%60;
        	   }
        	   if(localtimemin >=60)
        	   {
        		 localtimehour = localtimehour+(localtimemin/60);
        		 localtimemin = localtimemin%60;
        	   }
        	   System.out.println("Lhourrrrrrr"+localtimehour); 
        	   System.out.println("hikjkj"+localtimemin); 
        	   System.out.println("ooooo"+localtimesec); 
        	   if(isEast(placeid) ==true)
        	   {
        		   if(birth_timesec< localtimesec)  
        			   
        		   {
        			   birth_timesec = birth_timesec + 60;
        			   birth_timemin = birth_timemin - 1;
        			   
        		   }
        		   
                   if(birth_timemin< localtimemin)  
        			   
        		   {
        			   birth_timemin = birth_timemin + 60;
        			   birth_timehour = birth_timehour - 1;
        		   } 
                   localtimesec = birth_timesec - localtimesec;
                   localtimemin = birth_timemin - localtimemin;
                   localtimehour = birth_timehour- localtimehour;
                   System.out.println("AA" +localtimehour); 
                   System.out.println("BB" +localtimemin); 
            	   System.out.println("CC"+localtimesec); 
            	   
        	   }
        	   else 
        	   {
        		   localtimesec = birth_timesec + localtimesec;
        		   localtimemin = birth_timemin + localtimemin;
        		   localtimehour = birth_timehour+ localtimehour;
        	   }   
        		   if(localtimesec >=60)
            	   {
            		 localtimemin = localtimemin + (localtimesec / 60);
            		 localtimesec = (localtimesec % 60);
            	   }
        		   if(localtimemin >=60)
            	   {
            		 localtimehour = localtimehour + (localtimemin / 60);
            		 localtimemin = (localtimemin % 60);
            	   }   
                   
        	   
        	  
        	   Date ss  = new Date();
     	       ss.setHours(localtimehour);
     	       ss.setMinutes(localtimemin);
     	       ss.setSeconds(localtimesec);  
        	   return ss;    	        	
        }
        
        public Time getsiderialtablebystart_year(Date  b_date)//table 1(615)
        {   System.out.flush();
        	
        	Calendar cal=Calendar.getInstance();
        	cal.setTime(b_date);
        	
        	int yeartime = cal.get(Calendar.YEAR);
        	System.out.println(yeartime);
        	Time sidtime=null;
        	kidsdatasource ds = new kidsdatasource();
	    	FacesContext fc = FacesContext.getCurrentInstance();
	    	try 
	    {
	        st = ds.getConnection().createStatement();
	        rst = st.executeQuery("select * from siderialyear where siderialyear ="+yeartime+"");
	                           if(rst.next())
	    						{ 
	    							 sidtime = rst.getTime(2);
	    					      }	
	    						  
	    				rst.close();
	    				ds.closeCon();
	    			}	
	    			
	    		       catch (Exception e) 
	    		        {
	    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"year",""));
	    			   }
	    		    System.out.println("year value"+sidtime);
	    		       return sidtime ;
	        }			
    
        public Time getsiderialtablebystart_date(Date b_date)//table 2(616)
        {   System.out.flush();	
		    Calendar cal=Calendar.getInstance();
    	    cal.setTime(b_date);
    	    Date c = cal.getTime();
			java.sql.Date curr = new java.sql.Date(c.getTime());
			int currmonth = cal.get(Calendar.MONTH)+1;
        	int currday = cal.get(Calendar.DATE);
        	Time sidtime1=null;
        	kidsdatasource ds = new kidsdatasource();
	    	FacesContext fc = FacesContext.getCurrentInstance();
	    	String sqlvalue="";
	    	try 
	    {
	    		switch (currmonth) {
				case 1:sqlvalue="select * from siderialjan where day ="+currday+"";
				break;
				case 2:sqlvalue="select * from siderialfeb where day ="+currday+"";
				break;
				case 3:	sqlvalue="select * from siderialmar where day ="+currday+"";
				break;
				case 4:sqlvalue="select * from siderialapr where day ="+currday+"";
				break;
				case 5:sqlvalue="select * from siderialmay where day ="+currday+"";
				break;
				case 6:sqlvalue="select * from siderialjun where day ="+currday+"";
				break;
				case 7:sqlvalue="select * from siderialjuly where day ="+currday+"";
				break;
				case 8:sqlvalue="select * from siderialaug where day ="+currday+"";
				break;
				case 9:	sqlvalue="select * from siderialsep where day ="+currday+"";
				break;
				case 10:sqlvalue="select * from siderialoct where day ="+currday+"";
				break;
				case 11:sqlvalue="select * from siderialnov where day ="+currday+"";
				break;
				case 12:sqlvalue="select * from siderialdec where day ="+currday+"";
				break;
				default:
				break;
				}
	        st = ds.getConnection().createStatement();
	        rst = st.executeQuery(sqlvalue);
	                           if(rst.next())
	    						{ 
	    							 sidtime1 = rst.getTime(2);
	    					      }	
	    						  
	    				rst.close();
	    				ds.closeCon();
	    			}	
	    			
	    		       catch (Exception e) 
	    		        {
	    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"day",""));
	    			   }
	    		       System.out.println("day value"+sidtime1);
	    		       return sidtime1 ;
        	
        }
        public boolean isgmtupper(int placeid)//table 1(615)
        {   Integer gmt=0;
            boolean g=false;
        
        	kidsdatasource ds = new kidsdatasource();
	    	FacesContext fc = FacesContext.getCurrentInstance();
	    	try 
	    {
	        st = ds.getConnection().createStatement();
	        rst = st.executeQuery("select * from location where placeid ="+placeid+"");
	                           if(rst.next())
	    						{ 
	    							  gmt= rst.getInt(13);
	    					      }	
	    						  
	    				rst.close();
	    				ds.closeCon();
	    			}	
	    			
	    		       catch (Exception e) 
	    		        {
	    			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"year",""));
	    			   }
	    		    if(gmt==0)
	    		    { g=false;}
	    		    else
	    		    {g=true;}
	    		       return g ;
	        }			
        	
        public  int Roundup(float c) 
		 {   int s1=0;
		 int p = (int)c/10; 
		 int q=(int)((c%10)/1); 
		 int r=(p*10)+q; 
		 float s=c-r; 
		 if((s>=0.5)&&(s<=0.9))
		 {
			 s1=(int)(c+s); 
		 }
		 else
		 {
		 s1	=(int)(c); 
		 System.out.flush();  
		  } System.out.println("result "+s1);
		 return s1;
	 }
       
      
        
        public Date getsiderialTime()
        
        { System.out.flush();
        	Date siderial  =  new Date();
        	Date local  =  new Date();
        	int indtime= 0;
        	int localtimehour = 0;
   		    int localtimemin = 0;
   		    int localtimesec =0;
        FacesContext fc = FacesContext.getCurrentInstance();
        	try {
				
			
        	System.out.println("birthdate"+birth_date);
          Date x = getsiderialtablebystart_year(birth_date);
          Date y = getsiderialtablebystart_date(birth_date);
          siderialhour = x.getHours()   +   y.getHours();
          siderialmin  = x.getMinutes() +   y.getMinutes();
          siderialsec  = x.getSeconds() +   y.getSeconds();
                  
          if(siderialsec>= 60)
   	   {
        	  siderialmin = siderialmin + (siderialsec / 60 );
        	  siderialsec = (siderialsec % 60 );
   	   }
		   if(siderialmin>= 60)
   	   {
		siderialhour = siderialhour + (siderialmin / 60);
   		siderialmin = (siderialmin % 60);
   	   }  
   	 System.out.println("syear "+siderialhour);
     System.out.println("smin"+siderialmin);
     System.out.println("ssec"+siderialsec);
     kidsdatasource ds = new kidsdatasource();
     st = ds.getConnection().createStatement();
	    rst = st.executeQuery("select * from location  where placeid ="+placeid);		
			if(rst.next())
				{
				indtime = rst.getInt(14);
				}	
				rst.close();
				ds.closeCon();
				if(indtime==1)
					
				{forignlocalcount=1;}
     if(forignlocalcount==1)
	{
	local = forignlocaltime();
	localtimehour = local.getHours();
	localtimemin = local.getMinutes();
	localtimesec = local.getSeconds();
	 System.out.println("llyear "+localtimehour);
       System.out.println("l1min"+localtimemin);
       System.out.println("l1sec"+localtimesec); 
	}
	else
	{
          local = getlocalTime();
		  localtimehour = local.getHours();
		  localtimemin = local.getMinutes();
		  localtimesec = local.getSeconds();
	}
	      int temp=localtimehour;
	       int thour=12;
		   int tmin=0;
		   int tsec=0;
		   if(localtimehour>=thour)
		   {
		   localtimehour =localtimehour - thour;
		   localtimemin = localtimemin -tmin;
           localtimesec = localtimesec -tsec;
           System.out.println("llyear "+localtimehour);
  	       System.out.println("l1min"+localtimemin);
  	       System.out.println("l1sec"+localtimesec); 	
           Float csec = (float)((localtimehour*60*60)+(localtimemin * 60) + localtimesec) / (3600 ) * 10;
           int correctionsec=Roundup(csec); 
           localtimesec = (int)(localtimesec+correctionsec);
           System.out.println("corrsec"+localtimesec);
   		   if(localtimesec >=60)
       	   {
       		 localtimemin = localtimemin + (localtimesec / 60);
       		 localtimesec = (localtimesec % 60);
       	   }
   		   if(localtimemin >=60)
       	   {
       		 localtimehour = localtimehour + (localtimemin / 60);
       		 localtimemin = (localtimemin % 60);
       	   } 
        	siderialhour =  siderialhour+localtimehour;
            siderialmin =  siderialmin+localtimemin;
            siderialsec =  siderialsec+localtimesec;
           	
		   }
		   else
		   
		   {
			   if(tsec< localtimesec)  
    			   
    		   {
    			   tsec = tsec + 60;
    			   tmin = tmin -1;
    			   
    		   }
    		   
               if(tmin< localtimemin)  
    			   
    		   {
    			   tmin = tmin + 60;
    			   thour = thour - 1;
    			  
    		   } 
               localtimesec = tsec - localtimesec;
               localtimemin = tmin - localtimemin;
               localtimehour =(thour- localtimehour); 
               System.out.println("lhour"+localtimehour);
               System.out.println("lmin"+localtimemin);
               System.out.println("lsec"+localtimesec);
        Float csec = (float)((localtimehour*60*60)+(localtimemin * 60) + localtimesec) / (3600 ) * 10;
        System.out.println("csec"+csec);
        int correctionsec=Roundup(csec); 
        localtimesec = (int)(localtimesec+correctionsec);
        System.out.println("lsec"+localtimesec);
		   if(localtimesec >=60)
    	   {
    		 localtimemin = localtimemin + (localtimesec / 60);
    		 localtimesec = (localtimesec % 60);
    	   }
		   if(localtimemin >=60)
    	   {
    		 localtimehour = localtimehour + (localtimemin / 60);
    		 localtimemin = (localtimemin % 60);
    	   } 
		  
		  
	        if( localtimesec>siderialsec)  
			   
		     {
	    	   siderialsec = siderialsec + 60;
	    	   siderialmin = siderialmin -1;
			   
		     }
		   
               if(localtimemin>siderialmin)  
			   
		     {
        	   siderialmin= siderialmin + 60;
        	   siderialhour = siderialhour - 1;
			    
		     } 
               if(localtimehour>siderialhour)
               {
            	   siderialhour = siderialhour+30; 
               }
               siderialhour= siderialhour-localtimehour;
               siderialmin= siderialmin-localtimemin;
               siderialsec= siderialsec-localtimesec;
    		    
               
        	}
      
           System.out.println("lyear "+localtimehour);
  	       System.out.println("lmin"+localtimemin);
  	       System.out.println("lsec"+localtimesec); 	
            if(siderialsec>= 60)
 	   {
      	  siderialmin = siderialmin + (  siderialsec / 60 );
      	  siderialsec = ( siderialsec % 60 );
 	   }
		   if(siderialmin>= 60)
 	   {
		siderialhour = siderialhour + ( siderialmin / 60 );
 		siderialmin = ( siderialmin % 60 );
 	   }  
		    System.out.println("syear "+siderialhour);
	        System.out.println("smin"+siderialmin);
	        System.out.println("ssec"+siderialsec);
	      if(isgmtupper(placeid))
	      {System.out.println("correction parameter.....");
		   siderialsec = siderialsec + correction(getlongitudeHour(placeid),getLongitudeMin(placeid),getLongitudeSign(placeid));
	      }
	      else
	      {System.out.println("correction parameter");
	    	  siderialsec = siderialsec - correction(getlongitudeHour(placeid),getLongitudeMin(placeid),getLongitudeSign(placeid)); 
	      }
	      
		   System.out.println("correction()sec"+siderialsec);
		   siderial.setHours(siderialhour);
		   siderial.setMinutes(siderialmin);
		   siderial.setSeconds(siderialsec);
        	} catch (Exception e) 
        	{
        		 fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
			}
        	if(siderialhour>=24)
        	 siderialhour=siderialhour-24;
         	 siderialtime=siderialhour+":"+siderialmin+":"+siderialsec;
             return siderial;
        } 
        
               
        public int correction(int lhour,int lmin,String  lsign)
        {   Integer correctiontime=0;
        	int ujjainhour = 75;
            int ujjainmin = 50;
            if(lsign.equals("E"))
            {System.out.println("*************lllhff ");
    	 if(lmin< ujjainmin)
    	 {
    		 lmin = lmin  + 60;
    		 lhour = lhour - 1;
    	 }
    	       
      
        if(lhour <ujjainhour)
   	     {
   		 lhour= lhour + 30;
   		 } 
      
          /*if(lmin == 60)
        	{
        	 lmin = 0;
        	 lhour = lhour + 1;
        	}*/
          lmin = lmin - ujjainmin;
          lhour = lhour- ujjainhour;
          Float l=(float)lmin; 
          Float x = (l / 60);
        correctiontime = (int)((lhour+x)* 10) / 15;
            }
            else
            {System.out.println("67777$%&%*^% ");
            	  lmin = lmin + ujjainmin;
                  lhour = lhour+ujjainhour;
                
                  if( lmin>= 60)
            	   {
                	  lhour =lhour+ (  lhour / 60 );
                 	 lmin = (  lmin % 60 );
            	   }
           		   Float l=(float)lmin; 
                   Float x = (l / 60);
                   correctiontime = (int)((lhour+x)* 10) / 15;   
            }System.out.println("*************lllhffkkk "+correctiontime);
          return correctiontime;
        }
    	
        
        public String getLatitude(int placeid)
		{String place=" ";String country="";
			String  r = "";
			kidsdatasource ds = new kidsdatasource();
		FacesContext fc = FacesContext.getCurrentInstance();
		try 
		{
			     st = ds.getConnection().createStatement();
				rst = st.executeQuery("select * from location where placeid ="+placeid+"");
				
						if(rst.next())
						{
							Integer d = rst.getInt(3);
							String p = rst.getString(5);
							Integer m = rst.getInt(4);
							place=rst.getString(1);
							country=rst.getString(2);
							String d1=d.toString();
							String m1=m.toString();
							if(d<10)
							{
								d1="0"+d.toString();
							}
							if(m<10)
						{
								m1="0"+m.toString();	
						}
							r=d1.toString() +p + m1.toString();
							
						}
						else
							{r="Not Found";}
						rst.close();					
				ds.closeCon();
			}	
			
		       catch (Exception e) 
		        {
			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
			   }
		      Cplace=place+" , "+country;
		       return r;
	  }


        public String getLegnam()
       {  	 Integer finaldeg1=0;int count=0;int scount=0;
   	         Integer finalmin1=0;
	         Integer finalsec1=0;
	         Integer finaldeg2=0;	
	         Integer finalmin2=0;
	         Integer finalsec2=0;
	         Integer finaldeg11=0;
   	         Integer finalmin11=0;
	         Integer finalsec11=0;
	         Integer finaldeg22=0;	
	         Integer finalmin22=0;
	         Integer finalsec22=0;
        	int llegnadeg=0;Integer ldeg1=0;
        	int llegnamin=0;
        	int llegnasec=0;
        	Date s = getsiderialTime();
        	siderialhour = s.getHours();
        	siderialmin  = s.getMinutes();
        	siderialsec  = s.getSeconds();
     	   	Float h=(float)(siderialhour);
        	Float m=(float)(siderialmin);
        	Float stime = (float)( h+(m/100));
        	lat=getLatitude( placeid); 
        	String hour=(String)lat.substring(0, 2);
        	int latidegree =Integer.parseInt(hour);
        	String min=(String) lat.substring(3,5);
        	int latimin =Integer.parseInt(min);
        	String sqlvalue1="";
        	String sqlvalue2="";
        	String sqlvalue3="";
        	String sqlvalue4="";
        	String sqlvalue5="";
        	String sqlvalue6="";
        	String dirsidtime1="";
        	String dirsidtime2="";
          	String dirsidtime3="";
        	Float svalue1=0f; 
        	Float svalue2=0f; 
        	Float deg1=0f; Float stime1=0f;  int sign1 =  0;  Float  directdig1=  0f;
        	Float deg2=0f; Float stime2=0f;  int sign2 =  0;  Float  directdig2=  0f;
        	Float deg3=0f; Float stime3=0f;  int sign3 =  0;  Float  directstime1=0f;
        	Float deg4=0f; Float stime4=0f;  int sign4 =  0;  Float  directstime2=0f;
        	Float sideg1=0.0f;Float sideg2=0.0f;int sidsign1 =  0;int sidsign2 =  0;
        	int directsign1=0;Float res1=0f;
        	int directsign2=0;Float res2=0f;
        	int finalsec3=0;
            int finalmin3=0;
            int finaldeg3=0; 
        	Boolean directsign=false;;
        	int fsign=0;int fsign1=0;int fsign2=0;int fsign3=0;int ffsign=0;
        	int legnadeg=0;int legnamin=0;int legnasec=0;
        	System.out.println("stime"+stime);
        	
         	String sqls="";
        	kidsdatasource ds = new kidsdatasource();
	    	FacesContext fc = FacesContext.getCurrentInstance();
	    	if((latimin>=58)&&(latimin<=60))
	    	{latidegree=latidegree+1;}
	    	if((latidegree>0)&&(latidegree<10))
				{   sqls=sqlvalue1;
				    dirsidtime1="SELECT *  FROM sayana0 where time="+stime;
				    dirsidtime2="SELECT *  FROM sayana10 where time="+stime;
				    sqlvalue1="SELECT *  FROM sayana0 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue2="SELECT *  FROM sayana0 where time<"+stime+" order by time  desc  LIMIT 1";
					sqlvalue3="SELECT *  FROM sayana10 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue4="SELECT *  FROM sayana10 where time<"+stime+" order by time  desc  LIMIT 1";
					System.out.println("loop0loop0loop0loop0000");
					 sqls=sqlvalue1;
				}
					
					else if((latidegree>10)&&(latidegree<20)) 
				{   dirsidtime1="SELECT *  FROM sayana10 where time="+stime;
			        dirsidtime2="SELECT *  FROM sayana20 where time="+stime;
					sqlvalue1="SELECT *  FROM sayana10 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue2="SELECT *  FROM sayana10 where time<"+stime+" order by time  desc  LIMIT 1";
					sqlvalue3="SELECT *  FROM sayana20 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue4="SELECT *  FROM sayana20 where time<"+stime+" order by time  desc  LIMIT 1";
					System.out.println("looplooplooploop");
					sqls=sqlvalue1;
				}
				else if((latidegree>20)&&(latidegree<30))
				{    dirsidtime1="SELECT *  FROM sayana20 where time="+stime;
		            dirsidtime2="SELECT *  FROM sayana30 where time="+stime;
					sqlvalue1="SELECT *  FROM sayana20 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue2="SELECT *  FROM sayana20 where time<"+stime+" order by time  desc  LIMIT 1";
					sqlvalue3="SELECT *  FROM sayana30 where time>"+stime+" order by time asc  LIMIT 1";
					sqlvalue4="SELECT *  FROM sayana30 where time<"+stime+" order by time  desc  LIMIT 1";
					 sqls=sqlvalue1;
				}
				else if((latidegree>30)&&(latidegree<40))
				{   dirsidtime1="SELECT *  FROM sayana30 where time="+stime;
		            dirsidtime2="SELECT *  FROM sayana40 where time="+stime;
					sqlvalue1="SELECT *  FROM sayana30 where time>"+stime+" order by time asc  LIMIT 1";
					sqlvalue2="SELECT *  FROM sayana30 where time<"+stime+" order by time  desc  LIMIT 1";
					sqlvalue3="SELECT *  FROM sayana40 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue4="SELECT *  FROM sayana40 where time<"+stime+" order by time  desc  LIMIT 1";
					sqls=sqlvalue1;
				}
				else if((latidegree>40)&&(latidegree<50))
				{   dirsidtime1="SELECT *  FROM sayana40 where time="+stime;
		            dirsidtime2="SELECT *  FROM sayana50 where time="+stime;
					sqlvalue1="SELECT *  FROM sayana40 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue2="SELECT *  FROM sayana40 where time<"+stime+" order by time  desc  LIMIT 1";
					sqlvalue3="SELECT *  FROM sayana50 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue4="SELECT *  FROM sayana50 where time<"+stime+" order by time  desc  LIMIT 1";
					 sqls=sqlvalue1;
				}
					
				else if((latidegree>50)&&(latidegree<60))
				{    dirsidtime1="SELECT *  FROM sayana50 where time="+stime;
		             dirsidtime2="SELECT *  FROM sayana60 where time="+stime;
					sqlvalue1="SELECT *  FROM sayana50 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue2="SELECT *  FROM sayana50 where time<"+stime+" order by time  desc  LIMIT 1";
					sqlvalue3="SELECT *  FROM sayana60 where time>"+stime+" order by time  asc  LIMIT 1";
					sqlvalue4="SELECT *  FROM sayana60 where time<"+stime+" order by time  desc  LIMIT 1";
					 sqls=sqlvalue1;
				}
				   
					
				else if(latidegree==0)
				{
				 dirsidtime3="SELECT *  FROM sayana0 where time="+stime;
				 sqlvalue5="SELECT * FROM sayana0 where time>"+stime+" order by time  asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayana0 where time<"+stime+" order by time desc  LIMIT 1";
			      sqls=sqlvalue5;}
				else if(latidegree==10)
				{
				dirsidtime3="SELECT *  FROM sayana10 where time="+stime;	
				sqlvalue5="SELECT * FROM sayana10 where time>"+stime+" order by time  asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayana10 where time<"+stime+" order by time  desc  LIMIT 1";
			     sqls=sqlvalue5;}
				else if(latidegree==20)
				{
				dirsidtime3="SELECT *  FROM sayana20 where time="+stime;
				sqlvalue5="SELECT * FROM sayana20 where time>"+stime+" order by time asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayana20 where time<"+stime+" order by time desc  LIMIT 1";
			      sqls=sqlvalue5;
				}		
				else if(latidegree==30)
				{
				 dirsidtime3="SELECT *  FROM sayana30 where time="+stime;
				 sqlvalue5="SELECT * FROM sayana30 where time>"+stime+" order by time  asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayana30 where time<"+stime+" order by time  desc  LIMIT 1";
			     sqls=sqlvalue5;System.out.println("looppppppppppppppppppp");
			     System.out.println("ppppppp"+sqlvalue5+sqlvalue6);
				}    
				else if(latidegree==40)
				{
				dirsidtime3="SELECT *  FROM sayana40 where time="+stime;	
				  sqlvalue5="SELECT * FROM sayana40 where time>"+stime+" order by time  asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayana40 where time<"+stime+" order by time  desc  LIMIT 1";
			     sqls=sqlvalue5;}      
				else if(latidegree==50)
				{dirsidtime3="SELECT *  FROM sayana50 where time="+stime;
				 sqlvalue5="SELECT * FROM sayana50 where time>"+stime+" order by time  asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayana50 where time<"+stime+" order by time  desc  LIMIT 1";
			     sqls=sqlvalue5;}   
				else if(latidegree==60)
				{
				  dirsidtime3="SELECT *  FROM sayana60 where time="+stime;	
				  sqlvalue5="SELECT * FROM sayana60 where time>"+stime+" order by time  asc  LIMIT 1";
			      sqlvalue6="SELECT *  FROM sayana60 where time<"+stime+" order by time  desc  LIMIT 1";
			      sqls=sqlvalue5;}    	
					
				else if(latidegree>60)
				{dirsidtime3="SELECT *  FROM sayanatenth where time="+stime;
				sqlvalue5="SELECT * FROM sayanatenth where time>"+stime+" order by time  asc  LIMIT 1";
			     sqlvalue6="SELECT *  FROM sayanatenth where time<"+stime+" order by time  desc  LIMIT 1";
			     sqls=sqlvalue5;}    	
	    	   	Boolean sl=false;
	    	  
			    if(sqls.equals(sqlvalue1))
				sl=true;
			    else if(sqls.equals(sqlvalue5))
				sl=false;
	   	try 
    		{ st = ds.getConnection().createStatement();       	
    		
    		if(sl==true)
        	 {
                 rst=st.executeQuery(dirsidtime1);
            	 
            	 if(rst.next())
           {           		
            	 {
            		 sideg1 = rst.getFloat(2);
            		 sidsign1= rst.getInt(3);
            		 System.out.println("sssss"+sideg1);
               	 }
            	   rst.close();
            	   rst=st.executeQuery(dirsidtime2);
              	 
              	 if(rst.next())
              	 { sideg2 = rst.getFloat(2);
              	   sidsign2= rst.getInt(3);
              	 System.out.println("sssssdddddd"+sideg2);
           	   	 }
              	   rst.close();
              	   count=1;/////////////////////////
              	   
             }
         
        	 else
        	 {
        		 rst = st.executeQuery(sqlvalue1);
        	    if(rst.next())  
			       { 
			       				
             	   deg1 = rst.getFloat(2);
             	   stime1 = rst.getFloat(1);
             	   sign1= rst.getInt(3);
             	   
			       }
        	    rst.close(); 
        	   rst = st.executeQuery(sqlvalue2); 
			    if(rst.next())  
			       {       
             	      deg2=rst.getFloat(2); 
             	      stime2 = rst.getFloat(1);
					   sign2= rst.getInt(3);
					}	
					  
			    rst.close();
			   rst = st.executeQuery(sqlvalue3); 
			   if(rst.next())
			     	{ 
			      	 deg3 = rst.getFloat(2);
			       	 stime3 = rst.getFloat(1);
			       	 sign3= rst.getInt(3);
			        }
			   rst.close();
			   rst = st.executeQuery(sqlvalue4); 
		     if(rst.next())
			    { 	    
			      	 deg4 = rst.getFloat(2);
			       	 stime4 = rst.getFloat(1);
			       	 sign4= rst.getInt(3);
			       
			    	}
			    						  
			    	rst.close();
			    	
        	 }	
        	 }
        	 else if(sl==false)
        	 {  
        		 rst=st.executeQuery(dirsidtime1);
        	     if(rst.next())
        	 {
        	     directdig1 = rst.getFloat(2);
        	     directsign1= rst.getInt(3);
        	     scount=1;
        		 directsign=true;
        		 System.out.println("sssss");
           	     rst.close();  
         	     
         	}	 
        		 else
        	       		 
        	 {System.out.println("mmmmpppp222");
			         rst = st.executeQuery(sqlvalue5);
		              if(rst.next())
		    						{ System.out.println("mmmmpppp;;");
		                        	   directdig1 = rst.getFloat(2);
		                        	   directstime1 = rst.getFloat(1);
		                        	   directsign1= rst.getInt(3);
		                        	   directsign=true;
		                        	 System.out.println("directdig1"+ directdig1);
		              			     System.out.println("directsign1"+directsign1);
		                        	 }
		              else
		            	  				directsign=false;
		              
		              rst.close();
		              rst = st.executeQuery(sqlvalue6);          	   
		              if(rst.next())
			    						{ 	   
		            	  				directsign=true;
		                        	   directdig2 = rst.getFloat(2);
		                        	   directstime2 = rst.getFloat(1);
		                        	   directsign2= rst.getInt(3);
		                        	   System.out.println("directdig2"+ directdig2);
			              			   System.out.println("directsign2"+directsign2);
		    						     }	
		              else
		            	  				directsign=false;
		          	 directsign=false;
		              
		    				rst.close();
        	 }}
    						ds.closeCon();
			    				if(directsign==true)
			    				{  if(scount==0)
			    				   directLegnam(stime, directdig1, directdig2, directstime1, directstime2, directsign1, directsign2);
			    				else
			    				{     
			    					String sdeg1=(String)directdig1.toString();
				    				int sd1=sdeg1.length();
				    				if(sd1<=4)
				    				 { if(sdeg1.charAt(2)=='.')
				    				 {
				    					 sdeg1=sdeg1+"0";
				    					 sd1=sdeg1.length();
				    				 }
				    				 else 
				    				 {
				    					 sdeg1="0"+sdeg1;
				    					 sd1=sdeg1.length();
				    				 }
				    				  if(sd1<=4)
				    				 {
				    					 sdeg1=sdeg1+"0";
				    					 sd1=sdeg1.length();
				    				 }
				    					 }
				    				    String d1=sdeg1.substring(0,2);
				    		        	String m1=sdeg1.substring(3,5);
				    		          	Integer D1=Integer.parseInt(d1);
				    		        	Integer M1=Integer.parseInt(m1);
				    		        	legnadeg=D1;
				    		           	 legnamin=M1;
				    		        	 legnasec=0;
				    		        	 fsign=directsign1;
				    		             if(legnamin>= 60)
			    		          	   {
			    		         			 legnadeg = legnadeg + ( legnamin / 60 );
			    		         		     legnamin = ( legnamin % 60 );
			    		          	   }  
			    		         		   if(legnadeg>30)
			    		         		   {
			    		         			legnadeg=legnadeg-30;   
			    		         		   }
			    		         		   int lsample=legnadeg;//for sign checking
			    		        	System.out.println(legnadeg);
			    		        	System.out.println(legnamin);
			    		            System.out.println( legnasec);
			    		            System.out.println("final sign........  "+fsign);
			    		            Date  ayan = getayanamsa(birth_date);
			    		        	int ayanhour = ayan.getHours();
			    		        	int ayanmin = ayan.getMinutes();
			    		        	int ayansec= ayan.getSeconds();      	
			    		        	   System.out.println("lsam"+lsample); 
			    		               if((lsample>=0)&&(lsample<=22))
			    		        		{System.out.println("lsahgvm");
			    		        		
			    		              if((lsample>=ayanhour))
			    		              {
			    		            	  if(legnamin>ayanmin)
			    		            		  
			    		            		  
			    		            	  {ffsign=fsign;
			    		            	  System.out.println("46464fddm");  
			    		            	  }
			    		            	  else
			    		            	  {
			    		            		  System.out.println("fddm");
			    		            		  ffsign=fsign-1;  
			    		            	  }
			    		              }
			    		            	
			    		            	
			    		            	else 
			    		            	{
			    		            		ffsign=fsign-1;
			    		            		System.out.println("445gvm");
			    		            	}
			    		   	}
			    		        		else if((lsample>=23)&&(lsample<=30))
			    		        		{System.out.println("675m");	
			    		        		 if((lsample>=ayanhour))
			    		            	{System.out.println("56534");
			    		            		ffsign=fsign;
			    		            	}
			    		            	else 
			    		            	{System.out.println("564vm");
			    		            		ffsign=fsign-1;
			    		            	
			    		            	}
			    		        	
			    		        		}    	
			    		        	if(legnasec< ayansec)  
			    		  			   
			    		  		   {
			    		        		legnasec = legnasec + 60;
			    		        		legnamin = legnamin - 1;
			    		  		   }
			    		  		   
			    		             if(legnamin< ayanmin)  
			    		  			   
			    		  		   {
			    		            	 legnamin = legnamin + 60;
			    		            	 legnadeg = legnadeg - 1;
			    		  		   }
			    		             if(legnadeg<ayanhour)
			    		             {
			    		            	 legnadeg=legnadeg+30; 
			    		             }
			    		              llegnasec = legnasec - ayansec; 
			    		              llegnamin = legnamin - ayanmin;
			    		              llegnadeg = legnadeg - ayanhour;
			    		           
			    		             System.out.println((legnasec - ayansec));
			    		         	 System.out.println((legnamin - ayanmin));
			    		             System.out.println((legnadeg - ayanhour));
			    		             if(llegnasec>= 60)
			    		        	   {
			    		             	 llegnamin = llegnamin + (  llegnasec / 60 );
			    		             	 llegnasec = ( llegnasec % 60 );
			    		        	   }
			    		       		   if(llegnamin>= 60)
			    		        	   {
			    		       			 llegnadeg = llegnadeg + ( llegnamin / 60 );
			    		       		     llegnamin = ( llegnamin % 60 );
			    		        	   }  
			    		       		   if(llegnadeg>30)
			    		       		   {
			    		       			llegnadeg=llegnadeg-30;   
			    		       		   }
			    		       		   
			    		       		  System.out.println((llegnadeg));
			    		          	  System.out.println((llegnamin));
			    		              System.out.println((llegnasec)); 
			    		             legnumsign=sunsignName(ffsign);
			    		           System.out.println("******"+13+" "+ llegnadeg+" "+llegnamin+" "+ffsign);		    		           setnavaPosition(13,llegnadeg,llegnamin,ffsign);
			    		           setPosition(getLagnamName(),llegnadeg,llegnamin,ffsign);
			    		         
			    		           System.out.println("legnumsign   "+legnumsign);
			    		         		}   					
			    				}
			    				else
		 
			    				{
			    		   
			    		       if(count==0)
			    		       {
			    		     
			    		     System.out.println("kkk"+stime1);
			    		      System.out.println("hh"+stime2);
			    		      System.out.println("ddd"+stime3);
			    		      System.out.println("tttt"+stime4);
			    		       String sdeg1=(String)deg1.toString();
			 String sdeg2=(String)deg2.toString();
			 String sdeg3=(String)deg3.toString();
			 String sdeg4=(String)deg4.toString();
			 int sd1=sdeg1.length();
			 int sd2=sdeg2.length();
			 int sd3=sdeg3.length();
			 int sd4=sdeg4.length();
			 if(sd1<=4)
			 { if(sdeg1.charAt(2)=='.')
			 {
				 sdeg1=sdeg1+"0";
				 sd1=sdeg1.length();
			 }
			 else 
			 {
				 sdeg1="0"+sdeg1;
				 sd1=sdeg1.length();
			 }
			  if(sd1<=4)
			 {
				 sdeg1=sdeg1+"0";
				 sd1=sdeg1.length();
			 }
				 }
			 if(sd2<=4)
			 { 
				 if(sdeg2.charAt(2)=='.')
			 {
				 sdeg2=sdeg2+"0";
				 sd2=sdeg2.length();
			 }
			 else 
			 {
				 sdeg2="0"+sdeg2;
				 sd2=sdeg2.length();
			 }
			  if(sd2<=4)
			 {
				 sdeg2=sdeg2+"0";
				 sd2=sdeg2.length();
			 }
			 }
			 if(sd3<=4)
			 { if(sdeg3.charAt(2)=='.')
			 {
				 sdeg3=sdeg3+"0";
				 sd3=sdeg3.length();
			 }
			 else  
			 {
				 sdeg3="0"+sdeg3;
				 sd3=sdeg3.length();
			 }
			   if(sd3<=4)
			 {
				 sdeg3=sdeg3+"0";
				 sd3=sdeg3.length();
			 }
			 }
			 if(sd4<=4)
			 { if(sdeg4.charAt(2)=='.')
			 {
				 sdeg4=sdeg4+"0";
				 sd4=sdeg4.length();
			 }
			 else
			 {
				 sdeg4="0"+sdeg4;
				 sd4=sdeg4.length();
			 }
			  if(sd4<=4)
			 {
				 sdeg4=sdeg4+"0";
				 sd4=sdeg4.length();
			 }
			 }
		
				  System.out.println(sdeg1);
			      System.out.println(sdeg2);
			      System.out.println(sdeg3);
			      System.out.println(sdeg4);
        	String d1=sdeg1.substring(0,2);
        	String m1=sdeg1.substring(3,5);
        	String d2=sdeg2.substring(0,2);
        	String m2=sdeg2.substring(3,5);
        	String d3=sdeg3.substring(0,2);
        	String m3=sdeg3.substring(3,5);
        	String d4=sdeg4.substring(0,2);
        	String m4=sdeg4.substring(3,5);
        	
        	Integer D1=Integer.parseInt(d1);
        	Integer D2=Integer.parseInt(d2);
            Integer D3=Integer.parseInt(d3);
            Integer D4=Integer.parseInt(d4);  	
        	Integer M1=Integer.parseInt(m1);      	
        	Integer M2=Integer.parseInt(m2);
            Integer M3=Integer.parseInt(m3);
        	Integer M4=Integer.parseInt(m4);
        	
        	  System.out.println("after subsequence -values    "+D1);
		      System.out.println(D2);
		      System.out.println(D3);
		      System.out.println(D4);
		      System.out.println(M1);
		      System.out.println(M2);
		      System.out.println(M3);
		      System.out.println(M4);
        	
		      if(M1<M2)
	        	{
	        		M1 = M1  +  60;
	        		D1 = D1 - 1;
	        		
	        	}
	        	 
				if(D1< D2)
	        	{
	        		D1 = D1  + 30;
	        	}
	        	
				deg1=(float)(D1+((float)M1/100));
	        	if(M3<M4)
	        	{
	        		M3 = M3  +  60;
	        		D3 = D3 - 1;
	        	   	
	        	}
			
				
				if(D3< D4)
	        	{
	        		D3 =D3 + 30;
	        	}
	        	  
				 deg3=(float)(D3+((float)M3/100));
		  
        	
        	  System.out.println("after if condition    "+D1);
		      System.out.println(D3);
		      System.out.println(M1);
		      System.out.println(M3);
		      System.out.println(deg1);
		      System.out.println(deg2);
		      System.out.println(deg3);
		      System.out.println(deg4);
		     Float  fdegree1 = deg1 - deg2;
        	 Float  fdegree2 = deg3 - deg4;
        	 fdegree1= Round( fdegree1,4);
        	 fdegree2= Round( fdegree2,4);
        	 System.out.println("after subtraction of degrees 1 and 2  "+fdegree1);
        	 System.out.println("after subtraction of degrees 3 and 4  "+fdegree2 );
          	
        	 String fdeg1=(String)fdegree1.toString();
			 String fdeg2=(String)fdegree2.toString();
			 int fd1=fdeg1.length();
			 int fd2=fdeg2.length();
			 
			if(fd1<=4)
			 { if(fdeg1.charAt(2)=='.')
			 {
				fdeg1=fdeg1+"0";
				fd1=fdeg1.length();
			 }
			 else
			 {
				 fdeg1="0"+fdeg1;
				 fd1=fdeg1.length();
			 }
			  if(fd1<=4)
			 {
				 fdeg1=fdeg1+"0";
				 fd1=fdeg1.length();
			 }
				 }
			 if(fd2<=4)
			 { 
				 if(fdeg2.charAt(2)=='.')
			 {
				fdeg2=fdeg2+"0";
				 fd2=fdeg2.length();
			 }
			 else 
			 {
				 fdeg2="0"+fdeg2;
				 fd2=fdeg2.length();
			 }
			  if(fd2<=4)
			 {
				 fdeg2=fdeg2+"0";
				 fd2=fdeg2.length();
			 }
			 }
	       	String ffd1=fdeg1.substring(0,2);
        	String ffm1=fdeg1.substring(3,5);
        	String ffd2=fdeg2.substring(0,2);
        	String ffm2=fdeg2.substring(3,5);
        	 	
        	Integer fD1=Integer.parseInt(ffd1);
        	Integer fD2=Integer.parseInt(ffd2);
        	Integer fM1=Integer.parseInt(ffm1);
        	Integer fM2=Integer.parseInt(ffm2);
        	
        	System.out.println("after subsequence -values "+fD1);
		    System.out.println(fD2);
		    System.out.println(fM1);
		    System.out.println(fM2);
		    Integer S1=siderialhour;
        	Integer S2=siderialmin;
        	String stmy=stime2.toString();
        	   System.out.println("stimeeeeeeeeehh"+stmy);
        	  int st2=stmy.length();
            	if(st2<=4)
  			 { if(stmy.charAt(2)=='.')
  			 {
  				 stmy=stmy+"0";
  				 st2=stmy.length();
  			 } 
  			 else 
  			 {
  				 stmy="0"+stmy;
  				 st2=stmy.length();
  			 }
  			 
  			  if(st2<=4)
  			 {
  				  stmy=stmy+"0";
  				  st2=stmy.length();
  			 }
  			 }   
            String stm3=stmy.substring(0,2);
        	String stm4=stmy.substring(3,5);
        	Integer SS1=Integer.parseInt(stm3);
        	Integer SS2=Integer.parseInt(stm4); 
		    if(S2<SS2)
		    {
		    	S2=S2+60;
		    	S1=S1-1;
		    }
		    if(S1<SS1)
		    {
		    	S1=S1+30;
		    }
		    int Sx=S1-SS1;
		    int Sy=S2-SS2;
		   	System.out.println(S1);
        	System.out.println(S2);
        	System.out.println(SS1);
        	System.out.println(SS2);
        	   	
		  	double fstime=((0.16)*100)/60;
        	Float  sidvalue =(float)((float)Sy/60); 
        	Float sidvalue1 =Sx+sidvalue+((float)((float)siderialsec/3600));
           	float fres1 = ((float)((float)fD1+(float)((float)fM1/60))*(float)sidvalue1)/(float)( fstime); 
        	float fres2 = ((float)((float)fD2+((float)(float)fM2/60))*(float)sidvalue1)/(float)( fstime);  
			System.out.println("sidvalue "+sidvalue+" sidvalue1 "+sidvalue1);
        	System.out.println("fres1 "+fres1+" fres2 "+fres2);
           	int a1=(int)fres1;//degree
        	float a2=fres1;
        	float a3=a2-a1;
        	a3=a3*60;
        	int b1=(int)a3;//minute
        	float b2=a3;
        	float b3=b2-b1;
        	b3=b3*60;
        	int c1=(int)b3;//second
        	float c2=b3;
        	float c3=2f;
        	c3=c2-c1;
        	c3=c3*60;
        	
        	int a11=(int)fres2;//degree
        	float a22=fres2;
        	float a33=a22-a11;
        	a33=a33*60;
        	int b11=(int)a33;//minute
        	float b22=a33;
        	float b33=b22-b11;
        	b33=b33*60;
        	int c11=(int)b33;//second
        	float c22=b33;
        	float c33=2f;
        	 c33=c22-c11;
        	c33=c33*60;
        	
        	 finaldeg1=D2+a1;
        	 finalmin1=M2+b1;
             finalsec1=c1;
        	 finaldeg2=D4+a11;	
        	 finalmin2=M4+b11;
        	 finalsec2=c11;
	      	System.out.println("zzzzzzzzzzzzzzzzz "+a1);
		    System.out.println(b1);
		    System.out.println(c1);
		    System.out.println(a11);
		    System.out.println(b11);
		    System.out.println(c11);   
		
        	 if(finalsec1>= 60)
        	   {
        		 finalmin1 = finalmin1 + (  finalsec1 / 60 );
        		 finalsec1 = ( finalsec1 % 60 );
        	   }
       		   if(finalmin1>= 60)
        	   {
       			finaldeg1 = finaldeg1 + ( finalmin1 / 60 );
       			finalmin1 = ( finalmin1 % 60 );
        	   } 
       		 if(finalsec2>= 60)
        	   {
        		 finalmin2 = finalmin2 + (  finalsec2 / 60 );
        		 finalsec2 = ( finalsec2 % 60 );
        	   }
       		   if(finalmin2>= 60)
        	   {
       			finaldeg2 = finaldeg2 + ( finalmin2 / 60 );
       			finalmin2 = ( finalmin2 % 60 );
        	   }    
       		int fss=sign2+1;
        	int gss=sign4+1;
        	   if(finaldeg1<30)
              		
              	{
              		fsign1=sign2;
              	
              	}
              	else 
              	{
              		fsign1=fss;
              		
              	}
              	 System.out.println("sign1"+fsign1); 
              	 if((finaldeg2<30))
               		
               	{
               		fsign2=sign4;
               	
               	}
               	else 
               	{
               		fsign2=gss;
               	}
              	 System.out.println("sign2"+fsign2); 
              	 
        	if(finaldeg1>30)
        	{finaldeg1=finaldeg1-30;
        	
        	}
        	
        	if(finaldeg2>30)
        	{finaldeg2=finaldeg2-30;}
            finaldeg11=finaldeg1;
        	 finalmin11=finalmin1;
             finalsec11=finalsec1;
              finaldeg22=finaldeg2;
        	 finalmin22=finalmin2;
        	 finalsec22=finalsec2;
        	
	 }
			    			    else
			    			    { String sdeg1=(String)sideg1.toString();
			    				 String sdeg2=(String)sideg2.toString();
			    				 int sd1=sdeg1.length();
			    				 int sd2=sdeg2.length();
			    				 if(sd1<=4)
			    				 { if(sdeg1.charAt(2)=='.')
			    				 {
			    					 sdeg1=sdeg1+"0";
			    					 sd1=sdeg1.length();
			    				 }
			    				 else 
			    				 {
			    					 sdeg1="0"+sdeg1;
			    					 sd1=sdeg1.length();
			    				 }
			    				  if(sd1<=4)
			    				 {
			    					 sdeg1=sdeg1+"0";
			    					 sd1=sdeg1.length();
			    				 }
			    					 }
			    				 if(sd2<=4)
			    				 { 
			    					 if(sdeg2.charAt(2)=='.')
			    				 {
			    					 sdeg2=sdeg2+"0";
			    					 sd2=sdeg2.length();
			    				 }
			    				 else 
			    				 {
			    					 sdeg2="0"+sdeg2;
			    					 sd2=sdeg2.length();
			    				 }
			    				  if(sd2<=4)
			    				 {
			    					 sdeg2=sdeg2+"0";
			    					 sd2=sdeg2.length();
			    				 }
			    				 } 
			    					String d1=sdeg1.substring(0,2);
			    		        	String m1=sdeg1.substring(3,5);
			    		        	String d2=sdeg2.substring(0,2);
			    		        	String m2=sdeg2.substring(3,5);
			    		        	    	
			    		        	Integer D1=Integer.parseInt(d1);
			    		        	Integer D2=Integer.parseInt(d2);
			    		           	Integer M1=Integer.parseInt(m1);      	
			    		        	Integer M2=Integer.parseInt(m2);
			    		        	 finaldeg1=D1;
			    		        	 finalmin1=M1;
			    		        	 finaldeg2=D2;	
			    		        	 finalmin2=M2;
			    		        	 finalsec1=0;
			    		        	 finalsec2=0; 
			    		        	  System.out.println("after........ "+D1);
			    				      System.out.println(D2);
			    				      System.out.println(M1);
			    				      System.out.println(M2);
			    		        	 finaldeg11=finaldeg1;
			    		             finalmin11=finalmin1;
			    		             finalsec11=finalsec1;
			    		             finaldeg22=finaldeg2;
			    		             finalmin22=finalmin2;
			    		             finalsec22=finalsec2;
			    		             fsign1=sidsign1;
			    		             fsign2=sidsign2;
			    		             System.out.println("sidsign1"+sidsign1);
			    				      System.out.println("sidsign2"+sidsign2);
			    			    }	
          
           if(fsign1>fsign2)
       	{        	
        	if(finalsec1< finalsec2)  
  			   
  		   {
        		 finalsec1 = finalsec1 + 60;
        		 finalmin1 = finalmin1 - 1;
  			   
  		   }
  		   
             if(finalmin1< finalmin2)  
  			   
  		   {
            	 finalmin1 = finalmin1 + 60;
            	 finaldeg1 = finaldeg1 - 1;
  		   } 
        	if(finaldeg1<finaldeg2)
        	{
        		finaldeg1=finaldeg1+30;
        	}
        	  
        	finalsec3=finalsec1 -  finalsec2;
        	finalmin3=finalmin1 -  finalmin2;
        	finaldeg3=finaldeg1 -  finaldeg2;
       	}
           else if(fsign1<fsign2) 
           {
        	   if(finalsec2< finalsec1)  
           
  		   {
        		 finalsec2 = finalsec2 + 60;
        		 finalmin2 = finalmin2 - 1;
  			   
  		   }
  		   
             if(finalmin2< finalmin1)  
  			   
  		   {
            	 finalmin2 = finalmin2 + 60;
            	 finaldeg2 = finaldeg2- 1;
  		   } 
        	if(finaldeg2<finaldeg1)
        	{
        		finaldeg2=finaldeg2+30;
        	}
        	  finalsec3=finalsec2 -  finalsec1;
              finalmin3=finalmin2 -  finalmin1;
       	      finaldeg3=finaldeg2 -  finaldeg1; 
           }
           else if(fsign1==fsign2)
           {
        		if(finaldeg1>finaldeg2)
        		{
        			if(finalsec1< finalsec2)  
        	  			   
        	  		   {
        	        		 finalsec1 = finalsec1 + 60;
        	        		 finalmin1 = finalmin1 - 1;
        	  			   
        	  		   }
        	  		   
        	             if(finalmin1< finalmin2)  
        	  			   
        	  		   {
        	            	 finalmin1 = finalmin1 + 60;
        	            	 finaldeg1 = finaldeg1 - 1;
        	  		   } 
        	        	if(finaldeg1<finaldeg2)
        	        	{
        	        		finaldeg1=finaldeg1+30;
        	        	}
        	        	finalsec3=finalsec1 -  finalsec2;
        	        	finalmin3=finalmin1 -  finalmin2;
        	        	finaldeg3=finaldeg1 -  finaldeg2;	
        		}
        		else if(finaldeg1<finaldeg2)
        		{
        			if(finalsec2< finalsec1)  
        	  			   
        	  		   {
        	        		 finalsec2 = finalsec2 + 60;
        	        		 finalmin2 = finalmin2 - 1;
        	  			   
        	  		   }
        	  		   
        	             if(finalmin2< finalmin1)  
        	  			   
        	  		   {
        	            	 finalmin2 = finalmin2 + 60;
        	            	 finaldeg2 = finaldeg2- 1;
        	  		   } 
        	        	if(finaldeg2<finaldeg1)
        	        	{
        	        		finaldeg2=finaldeg2+30;
        	        	}
        	        	  finalsec3=finalsec2 -  finalsec1;
        	              finalmin3=finalmin2 -  finalmin1;
        	       	      finaldeg3=finaldeg2 -  finaldeg1; 
        	           }	
              }
           System.out.println("finaldms1  "+finaldeg1+ " "+finalmin1+ " "+finalsec1);
           System.out.println("finaldms2  "+finaldeg2+ " "+finalmin2+ " "+finalsec2);
           System.out.println("finaldms3  "+finaldeg3+ " "+finalmin3+ " "+finalsec3);
           int fsample1=finaldeg1;//for sign checking
        	Float results=(finaldeg3+(float)((float)finalmin3/60)+(float)((float)finalsec3/3600));
        	int l=(latidegree-10);
        	float result1=(float)((results * ( l))/ 10);
              result1=(Round(result1,5));
            int r1=(int)result1;//degree
        	float r2=result1;
        	float r3=r2-r1;
        	r3=r3*60;
        	int p1=(int)r3;//minute
        	float p2=r3;
        	float p3=p2-p1;
        	p3=p3*60;
        	int q1=(int)p3;//second
        	float q2=p3;
        	float q3=2f;
        	q3=q2-q1;
        	q3=q3*60;
        	
        	if(q1>= 60)
      	   {
      		 p1 = p1 + (  p1 / 60 );
      		 q1 = ( q1 % 60 );
      	   }
     		   if(p1>= 60)
      	   {
     			r1 = r1 + ( p1 / 60 );
     			p1 = ( p1 % 60 );
      	   }  
     		  if(r1>30)
          	{r1=r1-30;
          	
          	}
    if(fsign1>fsign2)
   {
         	
        	if(finalsec11< q1)  
  			   
  		   {
        		finalsec11 = finalsec11 + 60;
        		 finalmin11 = finalmin11 - 1;
        		 
  		   }
  		   
             if(finalmin11< p1)  
  			   
  		   {
            	 finalmin11 = finalmin11 + 60;
            	 finaldeg11=finaldeg11 - 1;
            	 
  		   } 
            Integer ldeg=finaldeg11;
            ldeg1=ldeg-r1;
         	System.out.println("ldeg1"+ldeg1);
         	if(finaldeg11<r1)
        	{
        		finaldeg11=finaldeg11+30;
        	}
        	
         	 System.out.println("finaldms1  "+finaldeg1+" "+finalmin1+" "+finalsec1);
         	 System.out.println("finaldms11  "+finaldeg11+" "+finalmin11+" "+finalsec11);
         	 System.out.println("finaldms2  "+finaldeg2+" "+finalmin2+" "+finalsec2);
             System.out.println("finaldms3  "+finaldeg3+" "+finalmin3+" "+finalsec3);
             System.out.println("results"+result1);
             System.out.println("r1 "+r1+" p1 "+p1+" q1 "+q1);
            legnadeg=finaldeg11-r1;
        	legnamin=finalmin11-p1;
        	legnasec=finalsec11-q1;
     		 }
     		 else if(fsign1<fsign2)
     		 {
     			    legnadeg=finaldeg11+r1;
                    legnamin=finalmin11+p1;
              	    legnasec=finalsec11+q1;	
              	    
     		 }
     		 else if(fsign1==fsign2)
     		 {
     			 if(finaldeg22<finaldeg11)
     			 {
     				if(finalsec11< q1)  
     	  			   
     	  		   {
     	        		finalsec11 = finalsec11 + 60;
     	        		 finalmin11 = finalmin11 - 1;
     	        		 
     	  		   }
     	  		   
     	             if(finalmin11< p1)  
     	  			   
     	  		   {
     	            	 finalmin11 = finalmin11 + 60;
     	            	 finaldeg11=finaldeg11 - 1;
     	            	 
     	  		   } 
     	          	if(finaldeg11<r1)
     	        	{
     	        		finaldeg11=finaldeg11+30;
     	        	}
     	        			
     				legnadeg=finaldeg11-r1;
     	        	legnamin=finalmin11-p1;
     	        	legnasec=finalsec11-q1; 
     			 }
     			 else if(finaldeg22>finaldeg11)
     			 {
     		    legnadeg=finaldeg11+r1;
             	legnamin=finalmin11+p1;
           	    legnasec=finalsec11+q1;	
     			 }
     			 System.out.println("******finaldms1  "+finaldeg1+" "+finalmin1+" "+finalsec1);
             	 System.out.println("finaldms11  "+finaldeg11+" "+finalmin11+" "+finalsec11);
             	 System.out.println("finaldms2  "+finaldeg2+" "+finalmin2+" "+finalsec2);
                 System.out.println("finaldms3  "+finaldeg3+" "+finalmin3+" "+finalsec3);
                 System.out.println("results "+result1);
                 System.out.println("r1 "+r1+" p1 "+p1+" q1 "+q1);
        	  	}
  		
        	  if(legnasec>= 60)
          	   {
               	 legnamin = legnamin + (  legnasec / 60 );
               	 legnasec = ( legnasec % 60 );
          	   }
         		   if(legnamin>= 60)
          	   {
         			 legnadeg = legnadeg + ( legnamin / 60 );
         		     legnamin = ( legnamin % 60 );
          	   }  
         		   if(legnadeg>30)
         		   {
         			legnadeg=legnadeg-30;   
         		   }
         		   int lsample=legnadeg;//for sign checking
        	System.out.println("legnadeg "+legnadeg);
        	System.out.println(legnamin);
            System.out.println( legnasec);
            int hss=fsign1-1;
            if(ldeg1>=0)
         	{
         		fsign=fsign1;
         	}
         	else 
         	{
         		fsign=hss;
         		if(fsign==0)
         		{
         			fsign=12;
         		}
         	
         	}
            System.out.println("final sign........  "+fsign);
            Date  ayan = getayanamsa(birth_date);
        	int ayanhour = ayan.getHours();
        	int ayanmin = ayan.getMinutes();
        	int ayansec= ayan.getSeconds();      	
        	   System.out.println("lsam"+lsample); 
               if((lsample>=0)&&(lsample<=22))
        		{System.out.println("lsahgvm");
        		
              if((lsample>=ayanhour))
              {
            	  if(legnamin>ayanmin)
            		  
            		  
            	  {ffsign=fsign;
            	  System.out.println("46464fddm");  
            	  }
            	  else
            	  {
            		  System.out.println("fddm");
            		  ffsign=fsign-1;  
            	  }
              }
            	
            	
            	else 
            	{
            		ffsign=fsign-1;
            		System.out.println("445gvm");
            	}
   	}
        		else if((lsample>=23)&&(lsample<=30))
        		{System.out.println("675m");	
        		 if((lsample>=ayanhour))
            	{System.out.println("56534");
            		ffsign=fsign;
            	}
            	else 
            	{System.out.println("564vm");
            		ffsign=fsign-1;
            	
            	}
        	
        		}    	
        	if(legnasec< ayansec)  
  			   
  		   {
        		legnasec = legnasec + 60;
        		legnamin = legnamin - 1;
  		   }
  		   
             if(legnamin< ayanmin)  
  			   
  		   {
            	 legnamin = legnamin + 60;
            	 legnadeg = legnadeg - 1;
  		   }
             if(legnadeg<ayanhour)
             {
            	 legnadeg=legnadeg+30; 
             }
              llegnasec = legnasec - ayansec; 
              llegnamin = legnamin - ayanmin;
              llegnadeg = legnadeg - ayanhour;
               if(llegnasec>= 60)
        	   {
             	 llegnamin = llegnamin + (  llegnasec / 60 );
             	 llegnasec = ( llegnasec % 60 );
        	   }
       		   if(llegnamin>= 60)
        	   {
       			 llegnadeg = llegnadeg + ( llegnamin / 60 );
       		     llegnamin = ( llegnamin % 60 );
        	   }  
       		   if(llegnadeg>30)
       		   {
       			llegnadeg=llegnadeg-30;   
       		   }
       		   
       		  System.out.println("(legnadeg - ayanhour) "+llegnadeg);
          	  System.out.println(llegnamin);
              System.out.println(llegnasec); 
             legnumsign=sunsignName(ffsign);
           System.out.println("************"+13+" "+ llegnadeg+" "+llegnamin+" "+ffsign);
           setnavaPosition(13,llegnadeg,llegnamin,ffsign);
           setPosition(getLagnamName(),llegnadeg,llegnamin,ffsign);
         
           System.out.println("legnumsign   "+legnumsign);
           prediction=starlegnumprediction(star,ffsign);
           System.out.println("prediction"+prediction);
         		}   				
    		}
	    catch (Exception e) 
        {
	      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"sssssssssss",""));
	    }
         	return  "";
  		    	        	
        }
        public Date getayanamsa(Date b_date)
        {   
        	System.out.flush();
        	Calendar cal=Calendar.getInstance();
        	cal.setTime(b_date);
        	int year= cal.get(Calendar.YEAR);
        	Date ayantime=new Date();
        	kidsdatasource ds = new kidsdatasource();
		    FacesContext fc = FacesContext.getCurrentInstance();
		try 
		{
			     st = ds.getConnection().createStatement();
			     rst = st.executeQuery("select * from ayanamsa where year ="+year+"");
				
						if(rst.next())
						{
							ayantime=rst.getTime(2);
							ayanam=ayantime.toString();
							System.out.println("ayantime "+ayantime);
						}
						rst.close();					
				        ds.closeCon();
			}	
			
		       catch (Exception e) 
		        {
			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
			   }
		        return ayantime;
       	
}
        public String directLegnam(Float sss,Float dirdig1,Float  dirdig2,Float dirstime1,Float  dirstime2,int  dirsign1,int  dirsign2) 
        {  System.out.flush();
        	int lfinaldeg=0;
        	int lfinalmin=0;
        	int lfinalsec=0;
        	int fsign=0;
        	int finalsign=0;
        	     
	      System.out.println("directtime1 "+ dirstime1);
	      System.out.println("directtime2 "+ dirstime2);
	      System.out.println(dirdig1);
	      System.out.println(dirdig2);
	      
String sdirectdig1=(String)dirdig1.toString();
String sdirectdig2=(String)dirdig2.toString();

int sdirect1=sdirectdig1.length();
int sdirect2=sdirectdig2.length();

if(sdirect1<=4)
{ if(sdirectdig1.charAt(2)=='.')
{
	sdirectdig1=sdirectdig1+"0";
sdirect1=sdirectdig1.length();
}
else 
{
	sdirectdig1="0"+sdirectdig1;
sdirect1=sdirectdig1.length();
}
if(sdirect1<=4)
{
	sdirectdig1=sdirectdig1+"0";
sdirect1=sdirectdig1.length();
}
}
if(sdirect2<=4)
{ 
if(sdirectdig2.charAt(2)=='.')
{
	sdirectdig2=sdirectdig2+"0";
sdirect2=sdirectdig2.length();
}
else 
{
	sdirectdig2="0"+sdirectdig2;
sdirect2=sdirectdig2.length();
}
if(sdirect2<=4)
{
	sdirectdig2=sdirectdig2+"0";
sdirect2=sdirectdig2.length();
}
}
System.out.println(sdirectdig1);
System.out.println(sdirectdig2);
String d1=sdirectdig1.substring(0,2);
String m1=sdirectdig1.substring(3,5);
String d2=sdirectdig2.substring(0,2);
String m2=sdirectdig2.substring(3,5);
Integer D1=Integer.parseInt(d1);
Integer D2=Integer.parseInt(d2);
int DD=D1;	
Integer M1=Integer.parseInt(m1);      	
Integer M2=Integer.parseInt(m2);
System.out.println("after subsequence -values    "+D1);
System.out.println(D2);
System.out.println(M1);
System.out.println(M2);
if(M1<M2)
{
M1 = M1  +  60;
D1 = D1 - 1;
}
if(D1< D2)
{
D1 = D1  + 30;
}
dirdig1=(float)(D1+((float)M1/100));
dirdig2=(float)(D2+((float)M2/100));
System.out.println("after if condition    "+D1);
System.out.println(M1);
System.out.println(dirdig1);
System.out.println(dirdig2);
Float  fdegree1 = dirdig1 -dirdig2;
fdegree1= Round( fdegree1,4);
System.out.println("after subtraction of degrees 1 and 2  "+fdegree1);
String fdeg1=(String)fdegree1.toString();
int fd1=fdeg1.length();
if(fd1<=4)
{ if(fdeg1.charAt(2)=='.')
{
fdeg1=fdeg1+"0";
fd1=fdeg1.length();
}
else
{
fdeg1="0"+fdeg1;
fd1=fdeg1.length();
}
if(fd1<=4)
{
fdeg1=fdeg1+"0";
fd1=fdeg1.length();
}
}
String ffd1=fdeg1.substring(0,2);
String ffm1=fdeg1.substring(3,5);
Integer fD1=Integer.parseInt(ffd1);
Integer fM1=Integer.parseInt(ffm1);
System.out.println("after subsequence -values "+fD1);
System.out.println(fM1);
Float  fstime=(float)((dirstime1 - dirstime2)*100)/60;//16
Float  sidvalue =(float)(((sss - dirstime2)*100)/60); 
Float sidvalue1 =sidvalue+((float)((float)siderialsec/3600));
float fres1 = ((float)((float)fD1+(float)((float)fM1/60))*(float)sidvalue1)/(float)(fstime);
System.out.println("///"+fstime);
System.out.println(sidvalue1 );
System.out.println(fres1);
int a1=(int)fres1;//degree
float a2=fres1;
float a3=a2-a1;
a3=a3*60;
int b1=(int)a3;//minute
float b2=a3;
float b3=b2-b1;
b3=b3*60;
int c1=(int)b3;//second
float c2=b3;
float c3=2f;
c3=c2-c1;
c3=c3*60;
Integer finaldeg=D2+a1;
Integer finalmin=M2+b1;
Integer finalsec=c1;
if(finalsec>= 60)
{
	finalmin = finalmin + (  finalsec / 60 );
	finalsec = ( finalsec% 60 );
}
if(finalmin>= 60)
{
	finaldeg = finaldeg + ( finalmin / 60 );
finalmin = ( finalmin % 60 );
}  
if(finaldeg>30)
{
	finaldeg=finaldeg-30;   
}
int ss=finaldeg;
int sas=finalmin;
System.out.println("ffff"+finaldeg);
System.out.println("ffff"+finalmin);
System.out.println( "ffff"+finalsec);
if(finaldeg<30)

{
fsign=dirsign2;
}
else 
{
fsign=dirsign2+1;
}
System.out.println("fsign   "+fsign);
Date  ayan = getayanamsa(birth_date);
int ayanhour = ayan.getHours();
int ayanmin = ayan.getMinutes();
int ayansec= ayan.getSeconds();      	

if(finalsec< ayansec)  

{
	finalsec = finalsec + 60;
	finalmin = finalmin - 1;
}

if(finalmin< ayanmin)  

{
	finalmin = finalmin + 60;
	finaldeg = finaldeg - 1;
}
if(finaldeg<ayanhour)
{
	finaldeg=finaldeg+30; 
}
 lfinalsec = finalsec - ayansec; 
 lfinalmin = finalmin - ayanmin;
 lfinaldeg = finaldeg - ayanhour;
if(lfinalsec>= 60)
{
	lfinalmin = lfinalmin + (  lfinalsec / 60 );
	lfinalsec = ( lfinalsec% 60 );
}
if(lfinalmin>= 60)
{
	lfinaldeg = lfinaldeg + ( lfinalmin / 60 );
lfinalmin = ( lfinalmin % 60 );
}  
if(lfinaldeg>30)
{
	lfinaldeg=lfinaldeg-30;   
}
System.out.println(lfinalsec);
System.out.println(lfinalmin);
System.out.println(lfinaldeg);
if((ss>=0)&&(ss<=22))
	{
		
 if((ss>=ayanhour))
	{
	 if(sas>ayanmin)
		  
		  
	  {finalsign=fsign;
	  System.out.println("46464fddm");  
	  }
	  else
	  {System.out.println("fddm");
	  finalsign=fsign-1;  
	  }
	}
	else 
	{
		finalsign=fsign-1;
	
	}
 	}
else if((ss>=23)&&(ss<=30))
	{	
		
 if((ss>=ayanhour))
	{
	 finalsign=fsign;
	}
	else 
	{
		finalsign=fsign-1;
   }
   }
System.out.println("fsign"+finalsign);
legnumsign=sunsignName(finalsign);
setnavaPosition(13,lfinaldeg,lfinalmin,finalsign);
setPosition(getLagnamName(),lfinaldeg,lfinalmin,finalsign);
System.out.println("legnumsign   "+legnumsign);
prediction=starlegnumprediction(star,finalsign);
return "";
  }
        public String starlegnumprediction(int starid,int legnumid)
        { 
        String starprediction = "";String weekprediction = "";
        String legnumprediction = "";
        String p= "";
        kidsdatasource ds = new kidsdatasource();
		FacesContext fc =  FacesContext.getCurrentInstance();
		try 
		{
			     st = ds.getConnection().createStatement();
			       rst = st.executeQuery("SELECT *  FROM starlegnumprediction"+language+" where starid="+starid+" and legnumid="+legnumid);
			    	if(rst.next())
						{
			    		 starprediction = rst.getString(4);
						 legnumprediction = rst.getString(5)+rst.getString(6)+rst.getString(7)+ rst.getString(8)+ rst.getString(9)+rst.getString(10);
						 
						}	
			    	rst.close(); 
			    	rst = st.executeQuery("SELECT *  FROM weekprediction"+language+" where id="+week);
			    	 if(rst.next())
						{
			    		 weekprediction = rst.getString(3);
						}
			    	rst.close();						
			        ds.closeCon();
			        p=starprediction+weekprediction+legnumprediction;
		}
		
		     catch (Exception e) 
	           {
			      fc.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,e.getMessage()+"",""));
			   }
		       System.out.println("pppppppppppp"+p);
		       return p;
    	}
        
      /*  public  String SunTime(int placeid, Date b_date)
        {   int sunrisehour =0 ;int sunrisemin =0 ;
    	int sunsethour = 0;  int sunsetmin = 0;

        	int    longitudehour=getlongitudeHour(placeid);
            int    longitudemin= getLongitudeMin(placeid);
            boolean longipos=isEast(placeid);//if true then east
            String lat=getLatitude( placeid); 
        	//gmt;
            //daylightchanges;
        	//TimeZone.CurrentTimeZone.GetDaylightChanges(DateTime.Now.Year);
        	Integer day = birth_date.getDay();
			Integer month = birth_date.getMonth();
			Integer year = birth_date.getYear();
			// first calculate the day of the year

			int N1 =(275 * month) / 9;
			int N2 = (month + 9) / 12;
			int N3 = (1 +((year - 4 *(year / 4) + 2) / 3));
			float N = N1 - (N2 * N3) + day - 30;

		// convert the longitude to hour value and calculate an approximate time

			int lngHour = longitudehour / 15;
			
			//if rising time is desired:
			float t1 = N + ((6 - lngHour) / 24);
			//if setting time is desired:
			float t2 = N + ((18 - lngHour) / 24);

		// calculate the Sun's mean anomaly
			
			float M1 = (0.9856 * t1) - 3.289;
			float M2 = (0.9856 * t2) - 3.289;

		4. calculate the Sun's true longitude
			
			L = M + (1.916 * sin(M)) + (0.020 * sin(2 * M)) + 282.634
			NOTE: L potentially needs to be adjusted into the range [0,360) by adding/subtracting 360

		5a. calculate the Sun's right ascension
			
			RA = atan(0.91764 * tan(L))
			NOTE: RA potentially needs to be adjusted into the range [0,360) by adding/subtracting 360

		5b. right ascension value needs to be in the same quadrant as L

			Lquadrant  = (floor( L/90)) * 90
			RAquadrant = (floor(RA/90)) * 90
			RA = RA + (Lquadrant - RAquadrant)

		5c. right ascension value needs to be converted into hours

			RA = RA / 15

		6. calculate the Sun's declination

			sinDec = 0.39782 * sin(L)
			cosDec = cos(asin(sinDec))

		7a. calculate the Sun's local hour angle
			
			cosH = (cos(zenith) - (sinDec * sin(latitude))) / (cosDec * cos(latitude))
			
			if (cosH >  1) 
			  the sun never rises on this location (on the specified date)
			if (cosH < -1)
			  the sun never sets on this location (on the specified date)

		7b. finish calculating H and convert into hours
			
			if if rising time is desired:
			  H = 360 - acos(cosH)
			if setting time is desired:
			  H = acos(cosH)
			
			H = H / 15

		8. calculate local mean time of rising/setting
			
			T = H + RA - (0.06571 * t) - 6.622

		9. adjust back to UTC
			
			UT = T - lngHour
			NOTE: UT potentially needs to be adjusted into the range [0,24) by adding/subtracting 24

		10. convert UT value to local time zone of latitude/longitude
			
			localT = UT + localOffset

  	
        	
        	
        	return ""; 
        	}*/
}
