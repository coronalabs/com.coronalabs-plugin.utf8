##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=utf8
ConfigurationName      :=Release
WorkspacePath          :=/home/vitaly/Documents/plugins
ProjectPath            :=/home/vitaly/corona.plugins/com.coronalabs-plugin.utf8/src/linux
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=ubuntu
Date                   :=26/04/22
CodeLitePath           :=/home/vitaly/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/plugin.$(ProjectName).so
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="utf8.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/home/vitaly/corona.plugins/com.coronalabs-plugin.utf8/src/shared 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -O2 -Wall $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/up_shared_lutf8lib.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)
	@$(MakeDirCommand) "/home/vitaly/Documents/plugins/.build-release"
	@echo rebuilt > "/home/vitaly/Documents/plugins/.build-release/utf8"

MakeIntermediateDirs:
	@test -d ./Release || $(MakeDirCommand) ./Release


$(IntermediateDirectory)/.d:
	@test -d ./Release || $(MakeDirCommand) ./Release

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_shared_lutf8lib.c$(ObjectSuffix): ../shared/lutf8lib.c $(IntermediateDirectory)/up_shared_lutf8lib.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/vitaly/corona.plugins/com.coronalabs-plugin.utf8/src/shared/lutf8lib.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_shared_lutf8lib.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_shared_lutf8lib.c$(DependSuffix): ../shared/lutf8lib.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_shared_lutf8lib.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_shared_lutf8lib.c$(DependSuffix) -MM ../shared/lutf8lib.c

$(IntermediateDirectory)/up_shared_lutf8lib.c$(PreprocessSuffix): ../shared/lutf8lib.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_shared_lutf8lib.c$(PreprocessSuffix) ../shared/lutf8lib.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Release/


