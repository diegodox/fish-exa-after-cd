# if __exa_after_cd is defined
if functions -q __exa_after_cd
    # if wrapped cd is not defined
    if not functions -q __exa_after_cd_wrapped_cd
        # copy current cd
        functions -c cd __exa_after_cd_wrapped_cd
        # delete current cd
        functions -e cd
    end
    # create cd using wrapped
    functions -c __exa_after_cd cd
end
