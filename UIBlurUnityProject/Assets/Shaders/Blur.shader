Shader "Lexdev/UI/Blur"
{
    Properties
    {

    }
    SubShader
    {
        Pass
        {
            HLSLPROGRAM
				
            #pragma vertex vert
            #pragma fragment frag
				
            #include "UnityCG.cginc"
 
            struct appdata
            {
                float4 vertex : POSITION;
            };
 
            struct v2f
            {
                float4 vertex : SV_POSITION;
            };
				
            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                return o;
            }
 
			half4 frag(v2f i) : SV_TARGET
			{
				return half4(0.25f,0.25f,0.25f,1);
            }

            ENDHLSL
        }
			
		Pass
		{
			HLSLPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			half4 frag(v2f i) : SV_TARGET
			{
				return half4(0.25f,0.25f,0.25f,1);
			}

			ENDHLSL
		}
    }
}