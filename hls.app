<project xmlns="com.autoesl.autopilot.project" top="ViT_act" name="Deit_cpp">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../weights" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../src/testbench.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="Deit_cpp/src/linear.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Deit_cpp/src/layernorm.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Deit_cpp/src/gelu.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Deit_cpp/src/conv.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Deit_cpp/src/attention.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Deit_cpp/src/add.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Deit_cpp/src/ViT.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

