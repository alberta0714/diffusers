import oneflow as flow
from time import gmtime, strftime
flow.mock_torch.enable()

from diffusers import EulerDiscreteScheduler
from onediff import OneFlowStableDiffusionPipeline

print(strftime("%Y-%m-%d %H:%M:%S", gmtime()))
model_id = "stabilityai/stable-diffusion-2-1"
# Use the Euler scheduler here instead
scheduler = EulerDiscreteScheduler.from_pretrained(model_id, subfolder="scheduler")
pipe = OneFlowStableDiffusionPipeline.from_pretrained(
    model_id, scheduler=scheduler, revision="fp16", torch_dtype=flow.float16
)
pipe = pipe.to("cuda")

print(strftime("%Y-%m-%d %H:%M:%S", gmtime()))
#prompt = "a photo of an astronaut riding a horse on mars"
#image = pipe(prompt, height=768, width=768).images[0]
prompt = "cat"
image = pipe(prompt, height=2048, width=2048).images[0]
print(strftime("%Y-%m-%d %H:%M:%S", gmtime()))

image.save("cat_2_1_2048.png")
print(strftime("%Y-%m-%d %H:%M:%S", gmtime()))
