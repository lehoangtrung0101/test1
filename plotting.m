AB=1; BC=1.5; ome1=1; alp1=-1;
%position of B;C
xA=0; yA=0;

maxphi1=350; dphi1=1;

maxphi1=350; dphi1=1;

n=round(maxphi1/dphi1);
for i=1:n+1
    phi(i)=(i-1)*dphi1;
    if i==1
        xC_max=AB+BC; 
    else 
       xC_max=RC(i-1,1);
    end 
   [rB,rC,vB,vC,vCB,aB,aC,ome2,alp2]=function_vel_acc(xA,yA,AB,BC,phi1(i),ome1,alp1, xC_max); 
    RB(i,:)=rB; RC(i,:)=rC; 
   VelB(i,:)=vB; VelC(i,:)=vC; VCB(i,:)=vCB;
   AccB(i,:)=aB; AccC(i,:)=aC; 
    Ome2(i,:)=ome2;Alp2(i,:)=alp2; 
end
%plot(phi1,VelC(:,1)); 
%plot(phi1,AccC(:,1));
