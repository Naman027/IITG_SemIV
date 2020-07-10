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


int main (){
   MYSQL *data;        
   data = mysql_init (NULL);
   if(data == NULL){
      fprintf (stderr, "mysql_init() failed (probably out of memory)\n");
      exit (1);
   }  
   if(mysql_real_dataect (data, host_name, username, pass, database_name, port_num, socket_name, flag) == NULL){
      fprintf (stderr, "mysql_real_dataect() failed\n Error: %s [%d] ", mysql_error(data), mysql_errno(data));
      mysql_close (data);
      exit (1);
   } 
   cout << "dataection Succesful" << endl;
   MYSQL_RES *dbnew;
   if (mysql_query(data, "select course_wise_student_list.roll_number, course_wise_student_list.name, sum(course_credits.credits) from course_wise_student_list inner join course_credits on course_wise_student_list.course_id = course_credits.course_id group by course_wise_student_list.roll_number, course_wise_student_list.name having (sum(course_credits.credits) > 40)") != 0) {
      fprintf(stderr, "mysql_query() failed");
   }
   else{
      dbnew = mysql_store_result(data);
      if(dbnew == NULL){
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