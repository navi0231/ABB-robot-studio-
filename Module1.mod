MODULE Module1
	CONST jointtarget jpos10:=[[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p10:=[[302.00,-0.00,145.72],[4.96918E-8,-4.47889E-9,-1,4.55456E-9],[-1,-1,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	CONST robtarget p20:=[[117.09,439.41,145.74],[2.01481E-7,1.83967E-6,-1,4.05182E-7],[0,0,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	PERS robtarget p1:=[[437,0,135.72],[4.96918E-8,-4.47889E-9,-1,4.55456E-9],[-1,-1,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	PERS robtarget p2:=[[252.09,439.41,155.74],[2.01481E-7,1.83967E-6,-1,4.05182E-7],[0,0,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
PROC main()
        MoveAbsJ jpos10\NoEOffs, v1000, z50, tool0;
     
        FOR x FROM 0 TO 3 DO
        			p1 := Offs(p10,45 * x,0,0);
        			MoveJ Offs(p1,0,0,150), v100, z50, tool0;
        			MoveL p1, v100, fine, tool0;
        			WaitTime 1;
                    Set DO_KH;
        			WaitTime 1;
        			MoveL Offs(p1,0,0,150), v100, z50, tool0;
        			p2 := Offs(p20,0,45 * x,0);
        			MoveJ Offs(p2,0,0,150), v100, z50, tool0;
        			MoveL p2, v100, fine, tool0;
        			WaitTime 1;
                    Reset DO_KH;
        			WaitTime 1;
        			MoveL Offs(p2,0,0,150), v100, z50, tool0;
        ENDFOR
        MoveAbsJ jpos10\NoEOffs, v1000, z50, tool0;
    ENDPROC
ENDMODULE