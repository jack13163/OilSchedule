function [ Lbest ] = up_Lbest( eff,Lbest,k,M )
%�������ӵĸ���������

%������Ⱥ�е�ÿ�����ӵĸ���������
for i = 1:30         %��Ⱥ��С30���̶�ֵ
    cc = 0;
    for j = 1:M       %Ŀ�꺯������M�������������
        if eff(i,k+j) <= Lbest(i,k+j)       %Lbest(i,k+j)��¼��������i��ĿǰΪֹ����õ�λ��
            cc = cc + 1;        %��һ������eff i�Ƿ���ĳ��Ŀ�꺯������ռ����ԭ��������
        end
    end
    %�����һ������eff i��ĳһĿ�꺯������ռ����ԭ�������ӣ��ͽ�������Ϊ����������
    if cc~= 0
        Lbest(i,:) = eff(i,:);
    end
end
end
