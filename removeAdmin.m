function err= removeAdmin(username)
    err=0;
    try 
        conn = sqlite('\\mathworks\devel\sandbox\gagarwal\database\InterviewScheduler.db');
        
        
        query = "DELETE FROM Admin WHERE Name ==" +'"'+username+'"'+ ";";
        disp(query)
        
        exec(conn,query);

        

        query = "DELETE FROM Credentials WHERE Username ==" +'"'+username+'"'+ ";";
        exec(conn,query)

        disp(query)

    catch 
        err = 1;
    end 
    
    close(conn)
    clear conn query
end
