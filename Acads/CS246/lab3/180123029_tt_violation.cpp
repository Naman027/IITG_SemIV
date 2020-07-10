#include<bits/stdc++.h>
#include <mysql.h>
using namespace std;

static char *host_name = "localhost";  
static char *username = "root";   
static char *pass = "ng24645#";    
static unsigned int port_num = 3306;
static char *socket_name = NULL;
static char *database_name = "180123029_26may2020";      
static unsigned int flag = 0;   


void fun(MYSQL *data, MYSQL_RES *dbnew) {
   MYSQL_ROW row;
   unsigned int i;
   while((row = mysql_fetch_row(dbnew)) != NULL) {
      for (i = 0; i < mysql_num_fields(dbnew); i++) {
         if (i > 0) {
            fputc('\t', stdout);
         }
         printf("%s", row[i] != NULL ? row[i] : "NULL");
      }
      fputc('\n', stdout);
   }
   if (mysql_errno(data) != 0) {
      fprintf(stderr, "mysql_fetch_row() failed\n");
   }
   else {
      printf("Number of rows returned: %lu\n", (unsigned long)mysql_num_rows(dbnew));
   }
}


int main () {
    MYSQL *data;    
    data = mysql_init (NULL);
    if (data == NULL){
        fprintf (stderr, "mysql_init() failed (probably out of memory)\n");
        exit (1);
    }  
   if (mysql_real_dataect (data,host_name, username, pass, database_name, port_num, socket_name,flag) == NULL){
      fprintf (stderr, "mysql_real_dataect() failed\n Error: %s [%d] ", mysql_error(data), mysql_errno(data));
      mysql_close (data);
      exit (1);
   }  
   out << "dataection Succesful" << endl;
   MYSQL_RES *dbnew;
   if (mysql_query(data, "select c1.roll_number, c1.name, c1.course_id, c2.course_id from course_wise_student_list as c1 join course_wise_student_list as c2 where (c1.roll_number = c2.roll_number and c1.course_id < c2.course_id and (exists(select * from exam_time_table as x, exam_time_table as y where x.course_id = c1.course_id and y.course_id = c2.course_id and x.exam_date = y.exam_date and ((x.start_time >= y.start_time AND x.start_time <= y.end_time) OR (x.end_time >= y.end_time AND x.end_time <= y.start_time)))))") != 0) {
      fprintf(stderr, "mysql_query() failed");
   }
   else{
      dbnew = mysql_store_result(data); 
      if (dbnew == NULL) {
         fprintf(stderr, "mysql_query() failed");
      }
      else{
         fun (data, dbnew);
         mysql_free_result(dbnew);
      }
   }

   mysql_close (data);
   mysql_library_end ();
   exit (0);
}