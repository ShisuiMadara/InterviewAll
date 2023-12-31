function [err, data] = getCollegeDetails(CollegeName)
    err = 0;
    try
        conn = sqlite('\\mathworks\devel\sandbox\gagarwal\database\InterviewScheduler.db');
    
        query = "SELECT Name, ID, Status, Round1, Round2, Round3, Domain, Email FROM Candidates WHERE CollegeName LIKE " + '"%' + CollegeName + '%"' + ';';
        
        data = fetch(conn,query);
    catch
        err = 1;
        data = [];
    end 
    
    close(conn)
    clear conn query
end