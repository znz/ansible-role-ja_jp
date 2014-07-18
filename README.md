# Ansible role for `ja_jp`

- Set jp mirror in `/etc/apt/sources.list`
- Set `ja` locale as default
- Set `Asia/Tokyo` timezone
- Install some packages

## Requirements

- Debian
- Ubuntu

## Role Variables

### Debian

- `ja_jp_apt_debian_uri`: mirror site
- `ja_jp_apt_debian_security_uri`: security repository
- `ja_jp_apt_debian_components`: apt components

### Ubuntu

- `ja_jp_apt_ubuntu_uri`: mirror site
- `ja_jp_apt_ubuntu_components`: apt components

### Common

- `ja_jp_default_locale`: locale
- `ja_jp_timezone`: timezone
- `ja_jp_install_packages`: packages related to ja locale

## Dependent Variables

- `ansible_distribution`: should be `Debian` or `Ubuntu`
- `ansible_distribution_release`: used in `sources.list`

## Dependencies

None.

## Example Playbook

    ---
    - hosts: all
      sudo: yes
      roles:
      - znzj.ja_jp

## License

MIT License
