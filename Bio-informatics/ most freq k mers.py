# Find the most frequent k-mers of "GATCCAGATCCCCATAC". 


d={}
text='ACGTTGCATGTCGCATGATGCATGAGAGCT'
k=4
poss_pat=[]
n=len(text)
i=0
j=1
itr=0
s=''
l=[]
def fun(text,l_str,l):
    i=0
    while(i<=(n-l_str)):
        s=''
#         print(i)
        for j in range(i,i+l_str):
#             print(text[j])
            s=s+text[j]
#         print(s)
        l.append(s)
        i=i+1
#     print(l)
    return(l)

    
for itr in range(2,n-1):
    l=[]
    d[itr]=fun(text,itr,l)
print(d[k])

cnts_dict={}
# for i in range(2,len(text)-1):
i=4
l=[]
for j in (d[i]):
    c=0
    c=KMPSearch(j,text,c)
    l.append(c)
cnts_dict[i]=l
q=(d[k])
print(cnts_dict[k])
# for i in range(len(q)):
i=0
for j in range(len(q)):
    if i==j:
        print('ping')
        continue
    if hamming(q[i],q[j])==1:
        print(q[i],q[j])
        print(q[i])
        
''' to find the k mer with d mistmatches, we will first find the k mer which occurs the most no of times  and find its hamming distance
with the others by iterating the 1st list printed below in O(n^2) complexity,. we will keep doing this  till the time the 
most freq k mers are exhasted '''