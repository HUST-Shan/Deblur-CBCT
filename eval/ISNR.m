%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%创建人：孙楠�?
%日期�?014/6/27
%修改人：
%日期�?
%功能：计算一幅图像的ISNR
%      输入：Iold原始无噪声图�?IFDK用FDK算法重建出的图像 I用算法去噪后的图�?I
%      输出：v图像的ISNR�?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function v=ISNR(Iold,IFDK,I)
[h w]=size(I);
msein=sum(sum((Iold-IFDK).^2))/(h*w);
mseout=sum(sum((Iold-I).^2))/(h*w);
v=10*log10(abs(msein/mseout));
end