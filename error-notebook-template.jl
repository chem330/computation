### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ ad8c8370-4121-47df-804f-ebb6b88f85e4
using Statistics

# ╔═╡ b21a8695-5e3c-4ebb-af21-21d6dc0cc9d0
using PlutoSliderServer

# ╔═╡ 5f8c2d20-03cb-4d95-973e-cad16a40fb9d
using PlutoUI

# ╔═╡ 15856b2e-b43b-41ed-ba9f-8a66120fb31b
md"""

# Introduction

In this lab, you will examine the uncertainty associated with different ways of dilivering a specified volume of liquid.  You will do this by measuring deionized water using four methods: (1) a beaker, (2) a graduated cylinder, (3) a vloumetric glass pipette, and (4) a mechanical pipette.  As a final exercise, you will choose one of these methods to use to determe the identity (based on density) of an unknown liquid with the **smallest possible uncertainty**.  To obtain a bigger dataset for analysis, we will compile the data and determine statistics at the class level.

In this lab, you will determine the mean and standard deviation of your group's data (we will look at additional statistics on the class-level data later).

The **mean** ($\mu$) is defined as:

$$\overline{X} = \frac {\sum_{i=1}^n X_i} {n}$$

Here, $X_i$ is the $i$th measurement and $n$ is the total number of obsrevations.

The *standard deviation* ($S$) is defined as:

$$s = \sqrt{\frac {\sum_{i = 1}^{n} (X_i - \overline{X})^{2}} {n - 1}}$$

You can calculate these values manually, but the [Statistics](https://docs.julialang.org/en/v1/stdlib/Statistics/) package for Julia provides functions that will calculate them for you; they are `mean()` and `std()`.  You can find more about these by using the *Live Docs* feature in the bottom right of the page.
"""

# ╔═╡ d388c298-172d-424e-83b8-4d9d17244cfd
md"""
**NOTE:** The code you write is saved automatically, but the answer to put into the text boxes will default to 0.00 everytime you re-open the notebook.  Make sure you export your work to HTML before closing the notebook!
"""

# ╔═╡ 3ff2734a-2785-4a78-9ea3-87f3b264b3e9
md"# Part 1: Beakers"

# ╔═╡ c13c4fe8-346e-11ee-0b45-e9a54dd8538a
beaker_masses = [ missing, missing, missing, missing, missing ]

# ╔═╡ 14761743-3d86-4ee2-b6d7-b01caaf63b87
@bind somenum Slider(1:10)

# ╔═╡ 4184ed56-e6fb-4d8b-a17a-fd8f8b919ec2
somenum

# ╔═╡ ed4f1809-29e4-4b5d-8145-5327d97f316e
md"## Mean"

# ╔═╡ a52d8cdc-6ee0-4e1f-b439-dcbea5eba032
md"Calculate the mean of the masses in the cell below.  You can do this manually with the formula above, or use the `mean()` function [for example `mean(beaker_masses)`]."

# ╔═╡ 0ff710f8-e05c-4760-8146-a03bd31be00f
beaker_mean = mean(beaker_masses)

# ╔═╡ 8f4b8587-0d33-4bea-9746-c766bccf782a
md"""
Enter your **mean** here to the correct number of significant digits.  If your answer is correct, the box below will turn green."

$(@bind beaker_mean_final TextField(default = "0.00"))
"""

# ╔═╡ 44684706-3a54-4e51-8e69-ff4699868c78


# ╔═╡ 3f3a60b7-ea28-4406-a821-c24f3f6e199b
md"## Standard Deviation"

# ╔═╡ 5980a68a-1808-48bf-b58e-47d05e283d88
md"Calculate the standard deviation of the masses in the cell below.  You can do this manually with the formula above, or use the `std()` function [for example `std(beaker_masses)`]."

# ╔═╡ 0537e522-b404-4d57-987f-d37f89735d2e
beaker_sd = std(beaker_masses)

# ╔═╡ 642e3a42-c305-406e-a94f-fb5406ac0983
md"""
Enter your **standard deviation** here to the correct number of significant digits:

$(@bind beaker_sd_final TextField(default = "0.00"))
"""

# ╔═╡ b4734832-7f36-4fe9-8a3b-3dc3fc65362a
md"# Part 2: Graduated Cylinders"

# ╔═╡ bb1dce14-3e33-4762-a58f-95b76ac13e35
cylinder_masses =  [ missing, missing, missing, missing, missing ]

# ╔═╡ 06285717-20f9-49e6-93d1-be1c80ca3dcb
md"## Mean"

# ╔═╡ 7090fb0d-56ea-44f5-9bb0-ec50843f3c53


# ╔═╡ 5005ea04-ec00-4204-a7d7-38cc2d026dbe
md"""
Enter your **standard deviation** here to the correct number of significant digits:

$(@bind cyl_mean_final TextField(default = "0.00"))
"""

# ╔═╡ c7f27f8e-5390-4f55-8e33-5511e10aff01
md"## Standard Deviation"

# ╔═╡ 3785be0d-62ba-4476-a988-3676bbdf6fa0


# ╔═╡ 0c26f35e-bb46-4bff-a180-3b5be1452d76
md"""
Enter your **standard deviation** here to the correct number of significant digits:

$(@bind cyl_sd_final TextField(default = "0.00"))
"""

# ╔═╡ bcdab602-2673-45f3-85d5-67a7f5badc65
md"# Part 3: Volumetric Pipette"

# ╔═╡ 3c9eb120-dbd2-494c-97b4-44369a6794be
pipette_masses =  [ missing, missing, missing, missing, missing ]

# ╔═╡ 4db12e02-5183-4afd-83fd-0066a3feb993
md"## Mean"

# ╔═╡ 31de64ed-5b64-4a02-b64b-edf89e47e863


# ╔═╡ 073bfc04-74c7-456f-b7e0-b5d8f52802a7
md"""
Enter your **mean** here to the correct number of significant digits:

$(@bind pip_mean_final TextField(default = "0.00"))
"""

# ╔═╡ 03fe9ef5-6419-44e9-ae18-4391782c3098
md"## Standard Deviation"

# ╔═╡ b6f0349f-7e7b-4869-b49a-9f75be15dab1


# ╔═╡ aadd2e5f-093c-4476-9904-4fbcb6f28592
md"""
Enter your **standard deviation** in the box below to the correct number of significant digits:

$(@bind pip_sd_final TextField(default = "0.00"))
"""

# ╔═╡ 4fc78cf4-c0e6-46bf-b2e0-a836d0d64a04
md"# Part 4: Determination of an Unknown Liquid"

# ╔═╡ 2ba6507a-8bde-41b3-a65f-e8e397f97224
unknown_masses =  [ missing, missing, missing, missing, missing ]

# ╔═╡ 1e957906-1491-45ee-afa8-38e510e4c53e
md"## Mean"

# ╔═╡ 8dfa038e-89b9-4692-8ddc-dd6e8283307e
mean(unknown_masses)

# ╔═╡ b8eda92a-d1c6-46f8-99b1-fdfbabfcba05
md"""
Enter your **standard deviation** here to the correct number of significant digits:

$(@bind unk_mean_final TextField(default = "0.00"))
"""

# ╔═╡ 0ebcb4a7-d008-417e-81a3-cebfd00ac991
md"## Standard Deviation"

# ╔═╡ bdaf95d4-6a8b-4de6-b78b-2accdbba712b
std(unknown_masses)

# ╔═╡ 9057b784-91a3-44e3-a333-6ede09b8b954
md"""
Enter your **standard deviation** here to the correct number of significant digits:

$(@bind unk_sd_final TextField(default = "0.00"))
"""

# ╔═╡ 41d37600-4d1f-4cad-bbfa-95ef8c17c727
@bind savefinaldat Button("Export Final Data 💾")

# ╔═╡ dbe1360c-4b71-43f6-ad9b-7a30b009769e
begin
	savefinaldat
	dat = "Beaker"*"\t"*string(beaker_mean_final)*"\t"*string(beaker_sd_final)*"\n"*"Cylinder"*"\t"*string(cyl_mean_final)*"\t"*string(cyl_sd_final)*"\n"*"Pipette"*"\t"*string(pip_mean_final)*"\t"*string(pip_sd_final)*"\n"
	savepath = pwd()*"/errorLab_finalData.csv"
	open(savepath, "w") do datfile
		write(datfile, dat)
    end
end;

# ╔═╡ 74a5babe-163c-4da1-933e-4ea989ee5b9a
md"""
# Confidence Intervals
"""

# ╔═╡ 25a9b35e-3984-4263-b5ee-f51c92151189
md"# Post-lab Questions"

# ╔═╡ b5bbfae1-25c3-4ec0-aadf-5b23741cd168
md"""
**1. Which had the smallest standard deviation, your data or the class data? Is that what you expected? Why or why not?**
"""

# ╔═╡ d3b861f4-4a67-4be9-823f-7cae385f0297
md"""

Enter your answer here using Markdown.  You can click the play button at the bottom right of this box when you are done to render the text and then click eyeball icon to the left to hide the code input box.

"""

# ╔═╡ 0cd100d8-397a-4433-b9c6-0a1a1fc73188
md"""
**2. Discuss the magnitude of the random (indeterminate) error in measurements using the different methods for measuring volume.  Which method has the smallest random error?  Why?**
"""

# ╔═╡ aa25258f-4853-4a3a-9574-fb80345a9c57
md"""

Enter your answer here using Markdown.  You can click the play button at the bottom right of this box when you are done to render the text and then click eyeball icon to the left to hide the code input box.

"""

# ╔═╡ e69834eb-cab3-452d-b7fb-8aef07f19122
md"""
**3. Do you suspect any systematic error in this experiment? Why? What could be done to correct it?**
"""

# ╔═╡ 14aa12ca-0766-4793-8c17-f70bc7435a56
md"""

Enter your answer here using Markdown.  You can click the play button at the bottom right of this box when you are done to render the text and then click eyeball icon to the left to hide the code input box.

"""

# ╔═╡ cefab937-9680-454c-be8c-dcea046b1105
md"# PlutoUI Stuff"

# ╔═╡ 60885571-b9e0-4c11-8b38-86bb648186d8
PlutoUI.TableOfContents()

# ╔═╡ 3c4f95be-69ca-44f3-b526-0aad9aa87d9f
hint(text) = Markdown.MD(Markdown.Admonition("hint", "Hint", [text]));

# ╔═╡ 8e51492e-17fa-4873-8617-5e86794519d1
correct(text=md"Great! You got the right answer! Let's move on to the next section.") = Markdown.MD(Markdown.Admonition("correct", "Got it!", [text]));

# ╔═╡ f985426d-75bb-4566-89a4-fefd82d31d7f
keep_working(text=md"The answer is not right.") = Markdown.MD(Markdown.Admonition("danger", "Keep working on it!", [text]));

# ╔═╡ a152279a-5f28-47f4-8c1f-de4371bb6eb9
function check_answer_errorLab(X, μ, sig, param; debounce = 2)
	try
		sleep(debounce)
		ans = parse(Float64, X)
		sig = Int(log10(sig))
		if ans == round(μ, sigdigits = sig) && X != "0.00"
			Markdown.MD(Markdown.Admonition("correct", "Got it!", [md"That is the correct $(param)!"]));
		elseif round(ans, sigdigits = sig) == round(μ, sigdigits = sig) && X != "0.00"
			Markdown.MD(Markdown.Admonition("hint", "Hint", [md"Check the number of significant digits. Remember to always report all known digits plus one uncertain digit."]));
		else
			Markdown.MD(Markdown.Admonition("danger", "Keep working on it!", [md"Your $(param) isn't correct."]))
		end
	catch
		Markdown.MD(Markdown.Admonition("danger", "Keep working on it!", [md"Your $(param) isn't correct."]))
	end	
end;

# ╔═╡ 574806d7-4d56-43c8-8fe8-d10d0e0195e7
check_answer_errorLab(beaker_mean_final, mean(beaker_masses), 1000, "mean")

# ╔═╡ 636f627f-d3ee-4fd5-b52c-f023484736c2
check_answer_errorLab(beaker_sd_final, std(beaker_masses), 10, "standard deviation")

# ╔═╡ 2cf45f5a-10d4-4610-8836-73478d9692dc
check_answer_errorLab(cyl_mean_final, mean(cylinder_masses), 10000, "mean")

# ╔═╡ 446bc90e-a6f9-4f77-9741-565ab1dabb6e
check_answer_errorLab(cyl_sd_final, std(cylinder_masses), 100, "standard deviation")

# ╔═╡ 4f86d103-4d0b-4e8e-8509-02b712cad593
check_answer_errorLab(pip_mean_final, mean(pipette_masses), 10000, "mean")

# ╔═╡ de2eb273-702f-47fe-92ea-acc44436b9c4
check_answer_errorLab(pip_sd_final, std(pipette_masses), 100, "standard deviation")

# ╔═╡ e89f202d-d4cf-47f5-8066-94ffad6142f9
check_answer_errorLab(unk_mean_final, mean(unknown_masses), 10000, "mean")

# ╔═╡ 1adbf59c-a43b-41a9-805a-8c4f71eaea86
check_answer_errorLab(unk_sd_final, std(unknown_masses), 100, "standard deviation")

# ╔═╡ e1b08d1d-7fd4-4ade-8270-be071b1cc1d4
function check_input_sf(X, glassware; debouce = 2)
	try
		sleep(debouce)
		if glassware == "beaker"
			sig = 3
		elseif glassware == "cylinder"
			sig = 4
		elseif glassware == "volumetric pipette"
			sig = 4
		else 
			"Unrecognized glassware"
		end
	
		if any(.!(ismissing.(X))) && all(length.(string.(X)) .!= sig+1)
		Markdown.MD(Markdown.Admonition("danger", "Heads Up!", [md"Remember to record all known digits plus one uncertain digit for all measurements!"]))
		end
	
	catch
			"Error"
	end
end

# ╔═╡ de8ef3c6-2cb3-4c8d-823c-6e2b6de7c47e
check_input_sf(beaker_masses, "beaker")

# ╔═╡ 2a221c37-6fbd-4f5d-95c0-70af4b5e8d89
check_input_sf(cylinder_masses, "cylinder")

# ╔═╡ 771d7504-6a1b-4f95-8b95-42ddfb09c439
check_input_sf(pipette_masses, "volumetric pipette")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoSliderServer = "2fc8631c-6f24-4c5b-bca7-cbb509c42db4"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[compat]
PlutoSliderServer = "~0.3.26"
PlutoUI = "~0.7.52"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.2"
manifest_format = "2.0"
project_hash = "6ceaf8cb87fd160c90613b31d1e338dc65dcc623"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.AbstractTrees]]
git-tree-sha1 = "faa260e4cb5aba097a73fab382dd4b5819d8ec8c"
uuid = "1520ce14-60c1-5f80-bbc7-55ef81b5835c"
version = "0.4.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BetterFileWatching]]
deps = ["Deno_jll", "JSON"]
git-tree-sha1 = "0d7ee0a1acad90d544fa87cc3d6f463e99abb77a"
uuid = "c9fd44ac-77b5-486c-9482-9798bd063cc6"
version = "0.1.5"

[[deps.BitFlags]]
git-tree-sha1 = "43b1a4a8f797c1cddadf60499a8a077d4af2cd2d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.7"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "02aa26a4cf76381be7f66e020a3eddeb27b0a092"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.2"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.ConcurrentUtilities]]
deps = ["Serialization", "Sockets"]
git-tree-sha1 = "5372dbbf8f0bdb8c700db5367132925c0771ef7e"
uuid = "f0e56b4a-5159-44fe-b623-3e5288b988bb"
version = "2.2.1"

[[deps.Configurations]]
deps = ["ExproniconLite", "OrderedCollections", "TOML"]
git-tree-sha1 = "434f446dbf89d08350e83bf57c0fc86f5d3ffd4e"
uuid = "5218b696-f38b-4ac9-8b61-a12ec717816d"
version = "0.17.5"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Deno_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "cd6756e833c377e0ce9cd63fb97689a255f12323"
uuid = "04572ae6-984a-583e-9378-9577a1c2574d"
version = "1.33.4+0"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.ExceptionUnwrapping]]
deps = ["Test"]
git-tree-sha1 = "e90caa41f5a86296e014e148ee061bd6c3edec96"
uuid = "460bff9d-24e4-43bc-9d9f-a8973cb893f4"
version = "0.1.9"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "4558ab818dcceaab612d1bb8c19cee87eda2b83c"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.5.0+0"

[[deps.ExproniconLite]]
deps = ["Pkg", "TOML"]
git-tree-sha1 = "d80b5d5990071086edf5de9018c6c69c83937004"
uuid = "55351af7-c7e9-48d6-89ff-24e801d99491"
version = "0.10.3"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.FromFile]]
deps = ["Downloads", "Requires"]
git-tree-sha1 = "5df4ca248bed8c35164d6a7ae006073bbf8289ff"
uuid = "ff7dd447-1dcb-4ce3-b8ac-22a812192de7"
version = "0.1.5"

[[deps.FuzzyCompletions]]
deps = ["REPL"]
git-tree-sha1 = "e16dd964b4dfaebcded16b2af32f05e235b354be"
uuid = "fb4132e2-a121-4a70-b8a1-d5b831dcdcc2"
version = "0.5.1"

[[deps.Git]]
deps = ["Git_jll"]
git-tree-sha1 = "51764e6c2e84c37055e846c516e9015b4a291c7d"
uuid = "d7ba0133-e1db-5d97-8f8c-041e4b3a1eb2"
version = "1.3.0"

[[deps.GitHubActions]]
deps = ["JSON", "Logging"]
git-tree-sha1 = "f544c863d90c82854ac2d3003808de0e4cba4186"
uuid = "6b79fd1a-b13a-48ab-b6b0-aaee1fee41df"
version = "0.1.6"

[[deps.Git_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "LibCURL_jll", "Libdl", "Libiconv_jll", "OpenSSL_jll", "PCRE2_jll", "Zlib_jll"]
git-tree-sha1 = "d8be4aab0f4e043cc40984e9097417307cce4c03"
uuid = "f8c6e375-362e-5223-8a59-34ff63f689eb"
version = "2.36.1+2"

[[deps.Glob]]
git-tree-sha1 = "97285bbd5230dd766e9ef6749b80fc617126d496"
uuid = "c27321d9-0574-5035-807b-f59d2c89b15c"
version = "1.3.1"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "ConcurrentUtilities", "Dates", "ExceptionUnwrapping", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "cb56ccdd481c0dd7f975ad2b3b62d9eda088f7e2"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.9.14"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LazilyInitializedFields]]
git-tree-sha1 = "410fe4739a4b092f2ffe36fcb0dcc3ab12648ce1"
uuid = "0e77f7df-68c5-4e49-93ce-4cd80f5598bf"
version = "1.2.1"

[[deps.LeftChildRightSiblingTrees]]
deps = ["AbstractTrees"]
git-tree-sha1 = "fb6803dafae4a5d62ea5cab204b1e657d9737e7f"
uuid = "1d6d02ad-be62-4b6b-8a6d-2f90e265016e"
version = "0.2.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c7cb1f5d892775ba13767a87c7ada0b980ea0a71"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+2"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "cedb76b37bc5a6c702ade66be44f831fa23c681e"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.0.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "Random", "Sockets"]
git-tree-sha1 = "03a9b9718f5682ecb107ac9f7308991db4ce395b"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.7"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.MsgPack]]
deps = ["Serialization"]
git-tree-sha1 = "fc8c15ca848b902015bd4a745d350f02cf791c2a"
uuid = "99f44e22-a591-53d1-9472-aa23ef4bd671"
version = "1.2.0"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "51901a49222b09e3743c65b8847687ae5fc78eb2"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.4.1"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1aa4b74f80b01c6bc2b89992b861b5f210e665b5"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.21+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "2e73fe17cac3c62ad1aebe70d44c963c3cfdc3e3"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.2"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.42.0+0"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "716e24b21538abc91f6205fd1d8363f39b442851"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.2"

[[deps.Pluto]]
deps = ["Base64", "Configurations", "Dates", "Distributed", "FileWatching", "FuzzyCompletions", "HTTP", "HypertextLiteral", "InteractiveUtils", "Logging", "LoggingExtras", "MIMEs", "Markdown", "MsgPack", "Pkg", "PrecompileSignatures", "PrecompileTools", "REPL", "RegistryInstances", "RelocatableFolders", "Sockets", "TOML", "Tables", "URIs", "UUIDs"]
git-tree-sha1 = "06fec2244568a4641e3352d20d0a0a608df6fa92"
uuid = "c3e4b0f8-55cb-11ea-2926-15256bba5781"
version = "0.19.27"

[[deps.PlutoSliderServer]]
deps = ["AbstractPlutoDingetjes", "Base64", "BetterFileWatching", "Configurations", "Distributed", "FromFile", "Git", "GitHubActions", "Glob", "HTTP", "JSON", "Logging", "Pkg", "Pluto", "SHA", "Sockets", "TOML", "TerminalLoggers", "UUIDs"]
git-tree-sha1 = "0965f4a7feb3f1814bcf67b379ceaa67cdb3beda"
uuid = "2fc8631c-6f24-4c5b-bca7-cbb509c42db4"
version = "0.3.26"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e47cd150dbe0443c3a3651bc5b9cbd5576ab75b7"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.52"

[[deps.PrecompileSignatures]]
git-tree-sha1 = "18ef344185f25ee9d51d80e179f8dad33dc48eb1"
uuid = "91cefc8d-f054-46dc-8f8c-26e11d7c5411"
version = "3.0.3"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "9673d39decc5feece56ef3940e5dafba15ba0f81"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.ProgressLogging]]
deps = ["Logging", "SHA", "UUIDs"]
git-tree-sha1 = "80d919dee55b9c50e8d9e2da5eeafff3fe58b539"
uuid = "33c8b6b6-d38a-422a-b730-caa89a2f386c"
version = "0.1.4"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RegistryInstances]]
deps = ["LazilyInitializedFields", "Pkg", "TOML", "Tar"]
git-tree-sha1 = "ffd19052caf598b8653b99404058fce14828be51"
uuid = "2792f1a3-b283-48e8-9a74-f99dce5104f3"
version = "0.1.0"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "90bc7a7c96410424509e4263e277e43250c05691"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.0"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "30449ee12237627992a99d5e30ae63e4d78cd24a"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.2.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "874e8867b33a00e784c8a7e4b60afe9e037b74e1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.1.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "1544b926975372da01227b382066ab70e574a3ec"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.10.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.TerminalLoggers]]
deps = ["LeftChildRightSiblingTrees", "Logging", "Markdown", "Printf", "ProgressLogging", "UUIDs"]
git-tree-sha1 = "f133fab380933d042f6796eda4e130272ba520ca"
uuid = "5d786b92-1e48-4d6f-9151-6b4477ca9bed"
version = "0.1.7"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "9a6ae7ed916312b41236fcef7e0af564ef934769"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.13"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╠═ad8c8370-4121-47df-804f-ebb6b88f85e4
# ╟─15856b2e-b43b-41ed-ba9f-8a66120fb31b
# ╟─d388c298-172d-424e-83b8-4d9d17244cfd
# ╟─3ff2734a-2785-4a78-9ea3-87f3b264b3e9
# ╠═c13c4fe8-346e-11ee-0b45-e9a54dd8538a
# ╠═b21a8695-5e3c-4ebb-af21-21d6dc0cc9d0
# ╟─de8ef3c6-2cb3-4c8d-823c-6e2b6de7c47e
# ╠═14761743-3d86-4ee2-b6d7-b01caaf63b87
# ╟─4184ed56-e6fb-4d8b-a17a-fd8f8b919ec2
# ╟─ed4f1809-29e4-4b5d-8145-5327d97f316e
# ╟─a52d8cdc-6ee0-4e1f-b439-dcbea5eba032
# ╠═0ff710f8-e05c-4760-8146-a03bd31be00f
# ╟─8f4b8587-0d33-4bea-9746-c766bccf782a
# ╠═44684706-3a54-4e51-8e69-ff4699868c78
# ╟─574806d7-4d56-43c8-8fe8-d10d0e0195e7
# ╟─3f3a60b7-ea28-4406-a821-c24f3f6e199b
# ╟─5980a68a-1808-48bf-b58e-47d05e283d88
# ╠═0537e522-b404-4d57-987f-d37f89735d2e
# ╟─642e3a42-c305-406e-a94f-fb5406ac0983
# ╟─636f627f-d3ee-4fd5-b52c-f023484736c2
# ╟─b4734832-7f36-4fe9-8a3b-3dc3fc65362a
# ╠═bb1dce14-3e33-4762-a58f-95b76ac13e35
# ╟─2a221c37-6fbd-4f5d-95c0-70af4b5e8d89
# ╟─06285717-20f9-49e6-93d1-be1c80ca3dcb
# ╠═7090fb0d-56ea-44f5-9bb0-ec50843f3c53
# ╟─5005ea04-ec00-4204-a7d7-38cc2d026dbe
# ╟─2cf45f5a-10d4-4610-8836-73478d9692dc
# ╟─c7f27f8e-5390-4f55-8e33-5511e10aff01
# ╠═3785be0d-62ba-4476-a988-3676bbdf6fa0
# ╟─0c26f35e-bb46-4bff-a180-3b5be1452d76
# ╟─446bc90e-a6f9-4f77-9741-565ab1dabb6e
# ╟─bcdab602-2673-45f3-85d5-67a7f5badc65
# ╠═3c9eb120-dbd2-494c-97b4-44369a6794be
# ╟─771d7504-6a1b-4f95-8b95-42ddfb09c439
# ╟─4db12e02-5183-4afd-83fd-0066a3feb993
# ╠═31de64ed-5b64-4a02-b64b-edf89e47e863
# ╟─073bfc04-74c7-456f-b7e0-b5d8f52802a7
# ╟─4f86d103-4d0b-4e8e-8509-02b712cad593
# ╟─03fe9ef5-6419-44e9-ae18-4391782c3098
# ╠═b6f0349f-7e7b-4869-b49a-9f75be15dab1
# ╟─aadd2e5f-093c-4476-9904-4fbcb6f28592
# ╟─de2eb273-702f-47fe-92ea-acc44436b9c4
# ╟─4fc78cf4-c0e6-46bf-b2e0-a836d0d64a04
# ╠═2ba6507a-8bde-41b3-a65f-e8e397f97224
# ╟─1e957906-1491-45ee-afa8-38e510e4c53e
# ╠═8dfa038e-89b9-4692-8ddc-dd6e8283307e
# ╟─b8eda92a-d1c6-46f8-99b1-fdfbabfcba05
# ╟─e89f202d-d4cf-47f5-8066-94ffad6142f9
# ╟─0ebcb4a7-d008-417e-81a3-cebfd00ac991
# ╠═bdaf95d4-6a8b-4de6-b78b-2accdbba712b
# ╟─9057b784-91a3-44e3-a333-6ede09b8b954
# ╟─1adbf59c-a43b-41a9-805a-8c4f71eaea86
# ╟─41d37600-4d1f-4cad-bbfa-95ef8c17c727
# ╠═dbe1360c-4b71-43f6-ad9b-7a30b009769e
# ╟─74a5babe-163c-4da1-933e-4ea989ee5b9a
# ╟─25a9b35e-3984-4263-b5ee-f51c92151189
# ╟─b5bbfae1-25c3-4ec0-aadf-5b23741cd168
# ╠═d3b861f4-4a67-4be9-823f-7cae385f0297
# ╟─0cd100d8-397a-4433-b9c6-0a1a1fc73188
# ╠═aa25258f-4853-4a3a-9574-fb80345a9c57
# ╟─e69834eb-cab3-452d-b7fb-8aef07f19122
# ╠═14aa12ca-0766-4793-8c17-f70bc7435a56
# ╟─cefab937-9680-454c-be8c-dcea046b1105
# ╠═60885571-b9e0-4c11-8b38-86bb648186d8
# ╠═5f8c2d20-03cb-4d95-973e-cad16a40fb9d
# ╠═3c4f95be-69ca-44f3-b526-0aad9aa87d9f
# ╠═8e51492e-17fa-4873-8617-5e86794519d1
# ╠═f985426d-75bb-4566-89a4-fefd82d31d7f
# ╠═a152279a-5f28-47f4-8c1f-de4371bb6eb9
# ╠═e1b08d1d-7fd4-4ade-8270-be071b1cc1d4
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
