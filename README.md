# qst_bash
some bash by qst0

## qst_check_site.sh
checks the status code of a site with curl

## qst_loop_script.sh
runs a script over and over

## qst_run_and_log.sh
run a script and leave information behind

### Q: How do you use these?
A: I just use this to check that i'm not hosting a 404, and react if I am with a command.

In `screen` I run: `bash qst_run_and_log.sh`, then detach from that screen
Now I can `tail -f qst.log`
