# 
# ======================== AT START  =========================== #  
#
# # From Local to Remote 
# 
# 
# # 1) On Github I create a NEW repo 
# 	# ... 
# 
# # 2) I Terminal position myself in the Folder ABOVE the desired git repo
# cd ~/OneDrive*/DIA_10_Futuro # cd ~/ParentFolder # 
# 
# # 3) I clone it locally 
# git clone https://github.com/Lulliter/Template_WordDocInR.git
# 
# 
# # 4) - OPTIONAL - I copy there some stuff I already had in a different folder
# cp -r ~/OneDrive*/DIA_10_Futuro/Chap-Futuro_LitRev/   ~/OneDrive*/DIA_10_Futuro/Template_WordDocInR
# 
# ======================== AT EVERY UPDATE =========================== #  
#
# 5) Check what happened... 
cd ~/OneDrive*/DIA_10_Futuro/Template_WordDocInR
git remote show origin 
git status

# 6) Add local changes to staging area 
git add push_git.sh

git add -A # everything
git add -u # only already tracked stuff 


# 7) Commit desired changes 
		# Create Std commit "message"....
		msg="Updated on `date`"
		if [ $# -eq 1 ]
		  then msg="$1"
		fi

		# ... Commit Those changes.
		git commit -m "$msg"

		# or git commit -m "Kable Table in SAMPLE2"


# 8)  Push source and build repos.
git push origin master
