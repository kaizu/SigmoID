#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyResources
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4ASG1tR2VuLnB5
					FolderItem = Li4AUHJvZmlsZXM=
					FolderItem = Li4AR2VuZXRpYy5jb2Rlcw==
					FolderItem = Li4ALi4AQnVpbGRfcmVzb3VyY2VzAGxpYndlYmtpdDMy
					FolderItem = Li4AcHR0X2NvbnZlcnRlci5weQ==
					FolderItem = Li4AVGVybUdlbi5weQ==
					FolderItem = Li4ALi4AQnVpbGRfcmVzb3VyY2VzAFRyYW5zVGVybUhQAGV4cHRlcm0uZGF0
					FolderItem = Li4ALi4AQnVpbGRfcmVzb3VyY2VzAExpbnV4AHRyYW5zdGVybQ==
				End
				Begin CopyFilesBuildStep Copy2AppFolder
					AppliesTo = 2
					Destination = 0
					Subdirectory = 
					FolderItem = Li4AU2lnbW9JRC5zaA==
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyFiles1
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4ASG1tR2VuLnB5
					FolderItem = Li4AUHJvZmlsZXM=
					FolderItem = Li4AR2VuZXRpYy5jb2Rlcw==
					FolderItem = Li4AcHR0X2NvbnZlcnRlci5weQ==
					FolderItem = Li4AVGVybUdlbi5weQ==
					FolderItem = Li4ALi4AQnVpbGRfcmVzb3VyY2VzAFRyYW5zVGVybUhQAGV4cHRlcm0uZGF0
					FolderItem = Li4ALi4AQnVpbGRfcmVzb3VyY2VzAFRyYW5zVGVybUhQAHRyYW5zdGVybQ==
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyFiles3
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4ASG1tR2VuLnB5
					FolderItem = Li4AUHJvZmlsZXM=
				End
			End
#tag EndBuildAutomation
