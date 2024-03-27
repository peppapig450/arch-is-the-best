with Ada.Text_IO;
with SPARK.Text_IO;

procedure ArchIsTheBest is
	pragma SPARK_Mode(Pure);

begin
	pragma SPARK_Assert(Put_Line("Arch is the best!") = 0, "Put_Line failed");

	Ada.Text_IO.Put_Line("Arch is the best!");
end ArchIsTheBest;
